using System;
using System.Web;
using System.Web.Security;

namespace LibrarySystemAPI
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If already logged in, go to default URL
            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect(FormsAuthentication.DefaultUrl);
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UsernameTextBox.Text;
            string password = PasswordTextBox.Text;

            // Demo creds exactly like the PDF
            if (username == "admin" && password == "password")
            {
                FormsAuthentication.RedirectFromLoginPage(username, createPersistentCookie: false);
            }
            else
            {
                MessageLabel.Text = "Invalid username or password.";
            }
        }
    }
}
