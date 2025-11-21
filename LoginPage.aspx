<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs"
    Inherits="LibrarySystemAPI.LoginPage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f5f7;
        }

        .login-box {
            width: 350px;
            margin: 100px auto;
            padding: 25px;
            background: #ffffff;
            border-radius: 6px;
            border: 1px solid #ddd;
            box-shadow: 0 0 6px rgba(0,0,0,0.1);
        }

        .login-box h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .login-box label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        .login-box input[type=text],
        .login-box input[type=password] {
            width: 100%;
            padding: 8px;
            margin-top: 6px;
            border: 1px solid #bbb;
            border-radius: 4px;
        }

        .login-box input[type=submit] {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            background: #3b75d1;
            border: none;
            color: white;
            font-size: 15px;
            border-radius: 4px;
            cursor: pointer;
        }

        .login-box input[type=submit]:hover {
            background: #2f60ac;
        }

        .error-text {
            color: red;
            margin-top: 10px;
            display: block;
            text-align: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h2>User Login</h2>

            <label>Username</label>
            <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>

            <label>Password</label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Button ID="LoginButton" runat="server" Text="Log In" OnClick="LoginButton_Click" />

            <asp:Label ID="MessageLabel" runat="server" CssClass="error-text"></asp:Label>
        </div>
    </form>
</body>
</html>
