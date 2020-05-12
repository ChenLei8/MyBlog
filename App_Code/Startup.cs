using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyBlog1.Startup))]
namespace MyBlog1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
