FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY Tanyo.API/*.csproj ./Tanyo.API/
RUN dotnet restore

# copy everything else and build app
COPY Tanyo.API/. ./Tanyo.API/
WORKDIR /app/Tanyo.API
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
WORKDIR /app
COPY --from=build /app/Tanyo.API/out ./
ENTRYPOINT ["dotnet", "Tanyo.API.dll"]
