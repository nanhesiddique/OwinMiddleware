using Microsoft.Owin;
using Owin;
[assembly: OwinStartupAttribute(typeof(SatyamSirWork1.App_Start.StartUp))]
namespace SatyamSirWork1.App_Start
{
    public partial class StartUp
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}