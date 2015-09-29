using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Testchrist.Startup))]
namespace Testchrist
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
