<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="RegisterForm.aspx.cs" Inherits="EzerMizion.RegisterForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .register {
            background: -webkit-linear-gradient(left, #f8f9fa, #f8f9fa);
            margin-top: 3%;
            padding: 3%;
        }

        .register-left {
            text-align: center;
            color: #000;
            padding-top: 15%;
            padding-bottom: 15%;
            direction: rtl;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
            background-color: white;
        }

            .register-left input {
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                width: 60%;
                background: #f8f9fa;
                font-weight: bold;
                color: #383d4;
                margin-top: 30%;
                margin-bottom: 3%;
                cursor: pointer;
            }

        .register-right {
            background: #f8f9fa;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
            padding-top: 5%;
        }

        .register-left img {
            margin-top: 15%;
            margin-bottom: 5%;
            width: 25%;
            -webkit-animation: mover 2s infinite alternate;
            animation: mover 1s infinite alternate;
        }

        .register-left p {
            font-weight: lighter;
            padding: 12%;
            margin-top: -9%;
        }

        .register .register-form {
            padding: 5%;
            margin: 5% 0 0% 0;
        }

        .btnRegister {
            position: center;
            text-align: center;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: white;
            color: #000;
            font-weight: 600;
            width: 100%;
            cursor: pointer;
        }

        .register-heading {
            text-align: center;
            color: #000;
        }

        .tColor {
            color: red;
        }

        .vStyle {
            direction: rtl;
            float: right;
        }

        .form-control {
            direction: rtl;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container register">
        <div class="row">
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="register-heading ">רישום</h3>
                        <div class=" register-form">
                            <div class="row">

                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="birthDay" runat="server" class="form-control" placeholder="תאריך לידה *" TextMode="Date" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" placeholder="תאריך לידה *" ErrorMessage="יש להכניס תאריך לידה" CssClass="vStyle" ControlToValidate="birthDay"></asp:RequiredFieldValidator>
                                        <asp:Label ID="message" runat="server" CssClass="vStyle" Text=""></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="phone_num" runat="server" class="form-control" placeholder="מספר פלאפון *" value="" MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="יש להכניס מספר פלאפון" CssClass="vStyle" ControlToValidate="phone_num"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="תעודת זהות לא תקנית" CssClass="vStyle" ValidationExpression="\d{10}" ControlToValidate="phone_num"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="id" runat="server" class="form-control" placeholder="תעודת זהות *" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="יש להכניס תעודת זהות" CssClass="vStyle" ControlToValidate="id"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="תעודת זהות לא תקנית" CssClass="vStyle" ValidationExpression="\d{9}" ControlToValidate="id"></asp:RegularExpressionValidator>
                                    </div>

                                </div>
                                <div class="col-6">
                                    <div class="form-group">
                                        <asp:TextBox ID="first_name" runat="server" class="form-control" placeholder="שם פרטי *" value="" MaxLength="20"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="יש להכניס שם פרטי" CssClass="vStyle" ControlToValidate="first_name"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="last_name" runat="server" class="form-control" placeholder="שם משפחה *" value="" MaxLength="20"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="יש להכניס שם משפחה" CssClass="vStyle" ControlToValidate="last_name"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="user_name" runat="server" class="form-control" placeholder="שם משתמש *" value="" MaxLength="20"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="יש להכניס שם משתמש" CssClass="vStyle" ControlToValidate="user_name"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-4"></div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <asp:Button ID="submit" runat="server" Text="הירשם" OnClick="submit_Click" type="submit" class="btnRegister" value="Register" />
                                        <asp:Label ID="alarm_lable" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <div class="col-4"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 register-left">
                <div class="re-box">
                    <h3>ברוכים הבאים</h3>
                    <p>אתם 30 שניות מלהצטרף למעגל הנתינה שלנו!</p>
                    <br>
                    <div id="register-link1" class="text-center">
                        <a href="LoginForm.aspx" class="tColor">להתחברות לחץ כאן</a>
                    </div>
                    <br />
                </div>

            </div>
        </div>

    </div>
</asp:Content>
