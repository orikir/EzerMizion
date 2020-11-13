<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="EzerMizion.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     .btnRegister{
    position:center;
    text-align:center;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #f8f9fa;
    color: #000;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
      #login .container #login-row #login-column #login-box #login-form {
          padding: 20px;
        }
      #login .container #login-row #login-column #login-box #login-form #register-link {
          margin-top: -85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="us_name" class="text-info">Username:</label><br>
                                 <asp:TextBox ID="us_name" type="text" name="us_name"  class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="id" class="text-info">ID:</label><br>
                                <asp:TextBox ID="id" type="text" name="id"  class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <asp:Button ID="loggin" runat="server" Text="Sign In" class="btnRegister" OnClick="loggin_Click" />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                            <div id="register-link" class="text-right">
                                <a href="RegisterForm.aspx" class="text-info">Register here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
