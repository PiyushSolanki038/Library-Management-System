using System;
using System.Web.Security;

namespace LibrarySystemAPI
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(FormsAuthentication.LoginUrl);
        }
    }
}
