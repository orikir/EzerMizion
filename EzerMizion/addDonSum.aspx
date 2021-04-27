<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="addDonSum.aspx.cs" Inherits="EzerMizion.addDonSum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .register {
            background: -webkit-linear-gradient(left, #f8f9fa, #f8f9fa);
            margin-top: 3%;
            padding: 3%;
        }
        body {
           background-image: url('Photos/bG.png');
           background-size: 120%;
           color: black ;
        }
        .register-left {
            text-align: center;
            color: #000;
            padding-top: 15%;
            padding-bottom: 0%;
            direction: rtl;
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
            padding-top: 7%;
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
            margin-top: 10%;
        }

        .btnRegister {
            text-align: center;
            margin: 5% 7% 5% 7%;
            border-color: red;
            border-style: double;
            padding: 1% 0% 1% 0%;
            background: white;
            color: #000;
            font-weight: 600;
            width: 30%;
            height: 50%;
            cursor: pointer;
        }

        .btnDon {
            text-align: center;
            margin: 5% 1% 5% 1%;
            border: none;
            padding: 1%;
            background-color: red;
            color: white;
            font-weight: 600;
            width: 31%;
            cursor: pointer;
        }

        .btnMenu {
            text-align: center;
            margin: 5% 1% 8% 1%;
            border-top: none;
            border-right: none;
            border-left: none;
            background-color: #f8f9fa;
            color: black;
            font-weight: 600;
            width: 48%;
            height: 50%;
            direction: rtl;
            border-bottom: 3%;
            border-bottom-style: double;
            font-size: 100%
        }

        .register-heading {
            text-align: center;
            margin-top: -10%;
            margin-bottom: -15%;
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

        .dSum {
            text-align: center;
            position: center;
            padding: 0%;
            border: 2%;
            border-color: black;
            background-color: white;
            color: black;
            width: 28%;
            height: 100%;
            font-weight: 600;
            font-size: 150%;
            margin-right: 2%;
        }

        .btnPM {
            text-align: center;
            border: 2%;
            border-color: black;
            padding: 1%;
            background-color: white;
            color: black;
            font-weight: 600;
            width: 8%;
            height: 100%;
            font-size: 150%;
            margin-right: 2%;
        }

        .rowF {
            margin: 5% 3% 0% 3%;
        }
        .rowImage {
            width:100%;
            height:50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container register">
        <div class="row">
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <div class="register-heading ">
                        <asp:Image ID="Image1" class="rowImage" runat="server" src="Photos/pageDon.jpg" />
                    </div>
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="row register-form">

                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <center>
                                <td>
                                    <div class="row rowF">
                                        <asp:Label ID="Label2" CssClass="btnMenu" BorderColor="gray" runat="server" Text="2. פרטים אישיים"></asp:Label>
                                        <asp:Label ID="Label4" CssClass="btnMenu " BorderColor="Red" runat="server" Text="1. סכום תרומה " ></asp:Label>
                                        
                                    </div>
                                     <div class=" row">
                                            <div class="col-12">
                                                <asp:Button ID="minus" class="btnPM" runat="server" Text="-" OnClick="minus_Click" />
                                                <asp:TextBox ID="dSum" MaxLength="20" runat="server" class=" dSum"  Text="0"></asp:TextBox>
                                                <asp:Button ID="plus" class="btnPM" runat="server" Text="+" OnClick="plus_Click" />
                                            </div>
                                    </div>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="dSum" ValidationExpression="\d+(?:,\d{1,2})?" ErrorMessage="הזנת ערך לא חוקי"></asp:RegularExpressionValidator>
                                                
                                    <div class="row rowF">
                                        <asp:Button ID="bdika" CssClass="btnDon" runat="server" Text="₪180 - בדיקת מח עצם" OnClick="bdika_Click" />
                                        <asp:Button ID="lego" CssClass="btnDon" runat="server" Text="₪ערכת לגו - 250 " OnClick="lego_Click" />
                                        <asp:Button ID="wish" CssClass="btnDon" runat="server" Text="₪הגשמת משאלה - 540 " OnClick="wish_Click" />
                                    </div>
                                    <div class="row rowF">
                                        <div class="col-12">
                                                <asp:Button ID="continue" runat="server" Text="המשך" CommandName="" OnClick="continue_Click"  type="submit" class="btnRegister" value="register" />
                                                <asp:Label ID="alarm_lable" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </td>
                            </center>
                            </div>
                            <div class="col-md-1"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 register-left">
                <div class="re-box">
                    <h3>תרמו לעזר מציון</h3>
                    <p>אתם 30 שניות מלהצטרף למעגל הנתינה שלנו!</p>
                    <br />
                    <a href="donHistory.aspx" class="tColor">רשימת התרומות שלך</a>
                </div>

            </div>
        </div>

    </div>
</asp:Content>
