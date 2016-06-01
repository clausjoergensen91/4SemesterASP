using System;
using System.Collections.Generic;
using System.IO;
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

        private string filename;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text = Thread.CurrentPrincipal.Identity + User.Identity.Name + HttpContext.Current.User.Identity.Name;
            filename = Server.MapPath("~/Logging/LogFile.txt");
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
                Response.Redirect("~/Admin/AdminPage.aspx");
            }
            else
            {
                Session["password"] = false;
                using(StreamWriter writer = new StreamWriter(filename, true))
                {
                    writer.WriteLine("----------------------------------------");
                    writer.WriteLine("Failed log-in attempt " + DateTime.Now);
                    writer.WriteLine("----------------------------------------");
                    writer.Flush();
                    writer.Close();
                }
                Response.Redirect("~/404.aspx");
            }
        }
    }
}