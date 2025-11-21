<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="LibrarySystemAPI.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Authorized Home</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #eef0f2;
        }

        .box {
            width: 500px;
            margin: 80px auto;
            padding: 25px;
            background: #ffffff;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }

        h2 {
            margin-bottom: 15px;
            color: #222;
        }

        .logout-btn {
            padding: 10px 18px;
            background: #ca1f1f;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .logout-btn:hover {
            background: #a81818;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <h2>Welcome, Authorized User!</h2>

            <p>You are logged in as: <b><%= HttpContext.Current.User.Identity.Name %></b></p>
            <p>You now have access to restricted resources.</p>

            <asp:Button ID="LogoutButton"
                        runat="server"
                        Text="Log Out"
                        CssClass="logout-btn"
                        OnClick="LogoutButton_Click" />
        </div>
    </form>
</body>
</html>
