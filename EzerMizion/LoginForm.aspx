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
        background-color: white;
        color: #000;
        font-weight: 600;
        width: 50%;
        cursor: pointer;
        }
          body {
          background-color: white;
        }
        .tColor{
           color: #73d3f2;
           direction: rtl;
        }
        .h3S{
            padding-bottom: 5%;
            padding-top: 5%;
        }
          .login-box 
        {
             position:center;
              border-radius: 1rem;
             background-color: #f8f9fa; 
        }
          .login-row {
            padding-top:5%; 
        }
          
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login">
        
        <div class="container">
            <div  class="row justify-content-center align-items-center login-row">
              <div class="col-4 "></div>
                    <div class="col-4 login-box" style="color:black;">
                        <h3 class="text-center h3S" >התחברות</h3>
                        <br />
                           <form  class="form " >
                           <div class="form-group" >
                                <label for="us_name" class="tColor" style="float:right;" >שם משתמש:</label><br>
                                 <asp:TextBox ID="us_name" type="text" name="us_name"  class="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="יש להכניס שם משתמש" ControlToValidate="us_name"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="id" class="tColor" style="float:right;">תעודת זהות:</label><br>
                                <asp:TextBox ID="id" type="text" name="id"  class="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="יש להכניס תעודת זהות" ControlToValidate="id"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="תעודת זהות לא תקנית" ValidationExpression="\d{9}" ControlToValidate="id"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group text-center">
                               <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                               <br>
                               <asp:Button ID="Button1" runat="server" Text="התחבר" class="btnRegister" OnClick="loggin_Click" />
                            </div>
                            <div id="register-link" class="text-center">
                                <a href="RegisterForm.aspx" class="tColor" >לחץ כאן כדי להירשם</a>
                            </div>
                        </form>    
                </div>
                <div class="col-4"></div>
            </div>
        </div>
    </div>
</asp:Content>
