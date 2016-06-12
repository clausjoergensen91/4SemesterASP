using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainWebApplication.Admin
{
    public partial class UserPanel : System.Web.UI.Page
    {
        BSIProxy.BSIServiceClient client = new BSIProxy.BSIServiceClient("wsHttpBinding");
        //BSISecureProxy.BSIServiceClient clientSecure = new BSISecureProxy.BSIServiceClient("SecureWSHttpBinding");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_click(object sender, EventArgs e)
        {
            string username = textUsername.Text;
            string password = textPassword.Text;
            string firstName = textFirstname.Text;
            string lastName = textLastName.Text;
            string email = textEmail.Text;
            string type = textType.Text;
            int admin = Convert.ToInt32(textAdmin.Text);

            bool result = client.CreateUser(username, password, firstName, lastName, email, admin, type);
            //bool results = clientSecure.CreateUser(username, password, firstName, lastName, email, admin, type);
        }

        protected void btnDelete_click(object sender, EventArgs e)
        {
            string email = textEmailDelete.Text;

            bool result = client.DeleteUser(email);
            //bool results = clientSecure.DeleteUser(email);
        }

        protected void btnUpdate_click(object sender, EventArgs e)
        {
            string oldFirstname = TextOldFN.Text;
            string oldLastName = TextOldLN.Text;
            string username = TextUsernameUpdate.Text;
            string password = TextPasswordUpdate.Text;
            string firstname = TextFirstnameUpdate.Text;
            string lastname = TextLastnameUpdate.Text;
            string email = TextEmailUpdate.Text;
            int admin = Convert.ToInt32(TextAdminUpdate.Text);
            string type = TextTypeUpdate.Text;

            bool result = client.UpdateUser(oldFirstname, oldLastName, username, password, firstname, lastname, email, admin, type);
            //bool results = clientSecure.UpdateUser(oldFirstname, oldLastName, username, password, firstname, lastname, email, admin, type);
        }
    }
}