using Microsoft.AspNetCore.Mvc;
using System.Net.Http;

namespace Tanyo.API.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class PublicController : BaseApiController
    {
        public HttpResponseMessage Test()
        {
            return new HttpResponseMessage()
            {
                Content = new StringContent("test")
            };
        }
    }
}