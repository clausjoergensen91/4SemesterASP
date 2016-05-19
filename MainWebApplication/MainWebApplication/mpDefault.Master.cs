using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
//using MainWebApplication.TestProxy;
using MainWebApplication;
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
            BSISecureProxy.SecureBSIServiceClient proxy = new BSISecureProxy.SecureBSIServiceClient("SecureWSHttpBinding");
            proxy.ClientCredentials.UserName.UserName = "AdminUser";
            proxy.ClientCredentials.UserName.Password = "AdminUser";
                proxy.FindUserSecure("Mor");
        }
    }
}