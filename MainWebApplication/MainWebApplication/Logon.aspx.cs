using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainWebApplication
{
    public partial class Logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Thread.CurrentPrincipal.Identity + User.Identity.Name + HttpContext.Current.User.Identity.Name; ;
        }

        protected void LoginBut(object sender, EventArgs e)
        {
            string passWord = txtPassword.Value.ToString();
            string userName = txtUsername.Value.ToString();
            bool verified = Membership.ValidateUser(userName, passWord);

            if (verified)
            {
                FormsAuthentication.SetAuthCookie(userName, false);
                FormsAuthentication.RedirectFromLoginPage(userName, false);
                Session["password"] = passWord;
            }
        }
    }
}