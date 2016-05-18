using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
//using MainWebApplication.TestProxy;
using MainWebApplication.BSIProxy;
using System.ServiceModel.Security;

namespace MainWebApplication
{
    public partial class mpDefault : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogoutMethod(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Roles.DeleteCookie();
            Session.Abandon();
            Response.Redirect("Index.aspx");
        }
        protected void testProxy(object sender, EventArgs e)
        {
            BSIServiceClient proxy = new BSIServiceClient("BasicHttpBinding_IBSIService");
            proxy.ClientCredentials.UserName.UserName = "testFindUser";
            proxy.ClientCredentials.UserName.Password = "testFindUser";
                proxy.FindUser("email");
        }
    }
}