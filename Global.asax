<%@ Application Language="C#" %>
<%@ Import Namespace="MyBlog1" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    public static int _totalcount;

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        _totalcount = 0;
    }

    void Session_Start(object sender, EventArgs e)
    {
            // 在新会话启动时运行的代码
            Application.Lock();
            _totalcount++;
            Application.UnLock();
    }

</script>
