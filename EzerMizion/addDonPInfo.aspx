﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="addDonPInfo.aspx.cs" Inherits="EzerMizion.addDonPInfo" %>

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
            padding-bottom: 0%;
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
            position: center;
            text-align: center;
            margin-top: 1%;
            border: none;
            padding: 2%;
            background: white;
            color: #000;
            font-weight: 600;
            width: 25%;
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
            width: 30%;
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
            width: 30%;
            height: 50%;
            direction: rtl;
            border-bottom-color: gray;
            border-bottom: 3%;
            font-size: 80%
        }

        .register-heading {
            text-align: center;
            margin-top: -5%;
            margin-bottom: -15%;
            color: #000;
        }

        .tColor {
            color: #73d3f2;
        }

        .vStyle {
            text-align:center;
            position:center;
            margin:1% 0 1% 0;
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
            width: 26%;
            height: 100%;
            font-weight: 600;
            font-size: 150%;
            margin: 1% 0% 1% 0%;
        }

        .btnPM {
            text-align: center;
            margin: 1% 0% 1% 0%;
            border: 2%;
            border-color: black;
            padding: 1%;
            background-color: white;
            color: black;
            font-weight: 600;
            width: 8%;
            height: 100%;
            font-size: 150%;
        }

        .rowF {
            margin: 5% 0% 2% 0%;
        }
         .line {
             width:100%;
             height:100%;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container register">
        <div class="row">
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <h3 class="register-heading ">תרומה</h3>
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="row register-form">

                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <center>
                                <td>
                                    <div class="row rowF">
                                        <asp:Button ID="donSumBtn" CssClass="btnMenu"  runat="server" Text="3. אישור תשלום " />
                                        <asp:Button ID="priInfoBtn" CssClass="btnMenu"  BorderColor="Red" runat="server" Text="2. פרטים אישיים"/>
                                        <asp:Button ID="paymentBtn" CssClass="btnMenu " BorderColor="Red" runat="server" Text="1.סכום תרומה "/>
                                    </div>
                                        <div class="rowF row">
                                        <div class="col-2"></div>
                                            <div class="col-8">
                                                <div class="row">
                                                <div class="col-12">
                                                    <asp:ListBox ID="orgName" CssClass="form-control line" runat="server" DataMember="DefaultView"  DataSourceID="SqlDataSource1" DataTextField="orgName"  onchange="ListBox1_SelectedIndexChanged" AutoPostBack="true" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" DataValueField="orgName" OnTextChanged="ListBox1_SelectedIndexChanged" ViewStateMode="Inherit" Rows="1"></asp:ListBox>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [orgName] FROM [organizations]"></asp:SqlDataSource>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="vStyle" ErrorMessage="יש לבחור שם ארגון" ControlToValidate="orgName"></asp:RequiredFieldValidator>
                                                
                                                    <asp:TextBox ID="id" runat="server" class="form-control" placeholder="תעודת זהות *" value=""></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="יש להכניס תעודת זהות" CssClass="vStyle" ControlToValidate="id"></asp:RequiredFieldValidator>
                                                    <br />
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="תעודת זהות לא תקנית" CssClass="vStyle" ValidationExpression="\d{9}" ControlToValidate="id"></asp:RegularExpressionValidator>
                                                 </div>
                                                 </div>
                                            </div>
                                        <div class="col-2"></div>
                                    </div>
                                <div class="form-group">
                                    <asp:Button ID="continue" runat="server" Text="המשך" OnClick="continue_Click"  type="submit" class="btnRegister" value="register" />
                                    <asp:Label ID="alarm_lable" runat="server" Text=""></asp:Label>
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
                </div>

            </div>
        </div>

    </div>
</asp:Content>
