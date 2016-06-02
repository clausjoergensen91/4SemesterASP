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
            if (Thread.CurrentPrincipal.Identity.Name.Length == 0)
            {
                LoginBut.Text = "Login";
            }
            else
            {
                LoginBut.Text = "Logout";
            }
        }

        protected void testProxy(object sender, EventArgs e)
        {
            BSISecureProxy.SecureBSIServiceClient proxy = new BSISecureProxy.SecureBSIServiceClient("SecureWSHttpBinding");
            proxy.ClientCredentials.UserName.UserName = Thread.CurrentPrincipal.Identity.Name;
            proxy.ClientCredentials.UserName.Password = (string)Session["password"];
            try
            {
                proxy.FindUserSecure("Mor");
            }
            catch (Exception ex)
            {

            }

        }

        protected void LogInMethod(object sender, EventArgs e)
        {
            if (Thread.CurrentPrincipal.Identity.Name.Length == 0)
            {
                Response.Redirect("~/Logon.aspx");
            }
            else
            {
                FormsAuthentication.SignOut();
                Roles.DeleteCookie();
                Session.Abandon();
                Response.Redirect("~/Index.aspx");
            }
        }
    }
}