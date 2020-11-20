<%@ Page Title="" Language="C#"  MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" UnobtrusiveValidationMode="None" Inherits="EzerMizion.LoginForm" %>
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
          body {
          margin: 0;
          padding: 0;
          background-color: white;
          height: 100vh;
 
        }
        #login .container #login-row #login-column #login-box {
          margin-top: 85px;
          max-width: 600px;
          height: 320px;
          border-radius: 0.5rem;
          background-color: #f8f9fa;
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
        <br />
        <br />
        <h3 class="text-center text-info text-black" >Login</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" >
                           <div class="form-group">
                                <label for="us_name" class="text-info " >Username:</label><br>
                                 <asp:TextBox ID="us_name" type="text" name="us_name"  class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="יש להכניס שם משתמש" ControlToValidate="us_name"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="id" class="text-info">ID:</label><br>
                                <asp:TextBox ID="id" type="text" name="id"  class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="יש להכניס תעודת זהות" ControlToValidate="id"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                            </div>
                            <div class="form-group text-center">
                               <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                               <br>
                               <asp:Button ID="Button1" runat="server" Text="Sign In" class="btnRegister" OnClick="loggin_Click" />
                            </div>
                            <div id="register-link" class="text-center">
                                <a href="RegisterForm.aspx" class="text-info">Register here</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
