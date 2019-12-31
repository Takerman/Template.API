using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;

namespace Tanyo.API.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    [EnableCors]
    public class BaseApiController : ControllerBase
    {
    }
}