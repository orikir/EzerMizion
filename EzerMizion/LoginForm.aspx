<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" UnobtrusiveValidationMode="None" Inherits="EzerMizion.LoginForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .btnRegister {
            position: center;
            text-align: center;
            margin-top: 10%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background-color: white;
            color: #000;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
        }

        body {
            background-color: white;
        }

        .tColor {
            color: red;
            direction: rtl;
        }

        .h3S {
            padding-bottom: 5%;
            padding-top: 5%;
        }

        .login-box {
            position: center;
            margin: 8% 0 10% 0;
            padding-bottom:2%;
            border-radius: 1rem;
            background-color: #f8f9fa;
        }

        .login-row {
            padding-top: 5%;
        }

        .brand_logo_container {
            position: absolute;
            height: 28%;
            width: 38%;
            top: -10%;
            border-radius: 60%;
            background: #f8f9fa;
            padding: 2%;
            text-align: center;
        }

        .brand_logo {
            height: 100%;
            width: 100%;
            border-radius: 50%;
            border: 3px solid white;
            background: #e7e9eb;
            padding: 1% 2% 1% 2%;
        }

        .form_container {
            margin-top: 20%;
        }
        .vStyle{
            direction: rtl;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login">
        <div class="container">
            <div class="row justify-content-center align-items-center login-row">
                <div class="col-4 "></div>
                <div class="col-4 login-box" style="color: black;">
                    <h3 class="text-center h3S" style="padding-top: 2%;">התחברות</h3>
                    <div class="d-flex justify-content-center">
                        <div class="brand_logo_container">
                            <asp:Image ID="logo" runat="server" src="Photos/logo.png" class="brand_logo" alt="Logo" />
                        </div>
                    </div>
                    <div class=" form_container">
                        <form class="form ">
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" class="tColor" style="float: right;" Text="שם משתמש:"></asp:Label><br>
                                <asp:TextBox ID="us_name" type="text" name="us_name" class="form-control" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס שם משתמש" ControlToValidate="us_name"></asp:RequiredFieldValidator>
                                </div>
                            <br />
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" class="tColor" style="float: right;" Text="תעודת זהות:"></asp:Label><br>
                                <asp:TextBox ID="id" type="text" name="id" class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס תעודת זהות" ControlToValidate="id"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="vStyle" ErrorMessage="תעודת זהות לא תקנית" ValidationExpression="\d{9}" ControlToValidate="id"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group text-center">
                                <br>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <br>
                                <asp:Button ID="Button1" runat="server" Text="התחבר" class="btnRegister" OnClick="loggin_Click" />
                            </div>
                            <div id="register-link" class="text-center">
                                <a href="RegisterForm.aspx" class="tColor">לחץ כאן כדי להירשם</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-4"></div>
            </div>
        </div>
    </div>
</asp:Content>
