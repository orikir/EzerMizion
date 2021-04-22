<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="addDonPInfo.aspx.cs" Inherits="EzerMizion.addDonPInfo" %>

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
           /padding-top: 15%;
           / padding-bottom: 0%;
            direction: rtl;
            background-color:#d91e21;
            padding: 12% 0% 0% 0%;
            
        }

            .register-left input {
                border: none;
                border-radius: 1.5rem;
                padding: 2%;
                width: 50%;
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
           margin:10%% 0% 5%;
            width: 100%;
            height:10%;
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
            margin: 15% 15% 1% 15%;
            border-color:red;
            border-style:double;
            padding: 3% 0% 3% 0%;
            background: white;
            color: #000;
            font-weight: 600;
            width: 90%;
            height: 110%;
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
            border-bottom-style:double;
            font-weight: 600;
            width: 48%;
            height: 50%;
            direction: rtl;
            border-bottom-color: gray;
            border-bottom: 3%;
            font-size: 100%
        }

        .register-heading {
            text-align: center;
            margin-top: -5%;
            margin-bottom: -15%;
            color: #000;
        }

        .tColor {
            color: white;
        }

        .vStyle {
            text-align: center;
            position: center;
            margin: 1% 0% 1% 0%;
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
        .row{
            margin:0% 1% 0% 1%
        }

        .line {
            width: 100%;
            height: 100%;
        }
        image{
            
            margin: 5% 0% 2% 0%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container register">
        <div class="row">
            <div class="col-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <h3 class="register-heading ">תרומה</h3>
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="row register-form">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <div class="row">
                                    <asp:Label ID="Label2" CssClass="btnMenu" BorderColor="Red" runat="server" Text="2. פרטים אישיים"></asp:Label>
                                    <asp:Label ID="Label4" CssClass="btnMenu " BorderColor="Red" runat="server" Text="1. סכום תרומה " ></asp:Label>
                                </div>
                                <div class="form-group row">
                                    <div class="col-3"></div>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="selectOrg" CssClass="form-control"  runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource1" DataTextField="orgName" OnSelectedIndexChanged="selectOrg_SelectedIndexChanged" onchange="selectOrg_SelectedIndexChanged" Rows="1" DataValueField="orgName" ViewStateMode="Inherit" AutoPostBack="true">
                                            <asp:ListItem>בחר סניף</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [orgName] FROM [organizations]"></asp:SqlDataSource>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="vStyle" ErrorMessage="יש לבחור שם ארגון" ControlToValidate="selectOrg"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-3">
                                       <asp:Label ID="Label1" class=" vStyle" runat="server" Text=":בחר מוסד "></asp:Label> 
                                    </div>
                                </div>
                                <div class=" form-group row">
                                    <div class="col-md-6">
                                        <asp:TextBox ID="ownerId" runat="server" class="form-control " placeholder="תעודת זהות של בעל הכרטיס *" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="יש להכניס תעודת זהות" CssClass="vStyle" ControlToValidate="ownerId"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="תעודת זהות לא תקנית" CssClass="vStyle" ValidationExpression="\d{9}" ControlToValidate="ownerId"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="id" runat="server" class="form-control " placeholder=" תעודת זהות של משתמש *" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="יש להכניס תעודת זהות" CssClass="vStyle" ControlToValidate="id"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="תעודת זהות לא תקנית" CssClass="vStyle" ValidationExpression="\d{9}" ControlToValidate="id"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="form-group row ">
                                    <div class=" col-md-6">
                                        <!-- CVV -->
                                        <asp:TextBox ID="cardCvv" class="form-control" runat="server" placeholder="CVV*" Text=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס שלוש ספרות בגב הכרטיס" ControlToValidate="cardCvv"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="vStyle" ErrorMessage="מספר לא תקני" ValidationExpression="\d{3}" ControlToValidate="cardCvv"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class=" col-md-6">
                                        <asp:TextBox ID="cardNum" class="form-control " runat="server" placeholder="מספר כרטיס*" Text=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס מספר כרטיס אשראי (14) ספרות" ControlToValidate="cardNum"></asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" CssClass="vStyle" ErrorMessage="מספר הכרטיס לא תקני" ValidationExpression="\d{14}" ControlToValidate="cardNum"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2"></div>
                                    <!-- Expiry-->
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="Month" class="form-control" runat="server" OnSelectedIndexChanged="Month_SelectedIndexChanged" ForeColor="Black">
                                            <asp:ListItem>בחר חודש </asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="Year" class="form-control" runat="server" OnSelectedIndexChanged="Year_SelectedIndexChanged" ForeColor="Black">
                                            <asp:ListItem> בחר שנה</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-2">
                                        <asp:Label ID="Label3" class=" vStyle" runat="server" Text=":תוקף"></asp:Label>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <asp:Button ID="continue" runat="server" Text="אישור" OnClick="continue_Click" type="submit" class="btnRegister" />
                                        </div>
                                        <div class="row">
                                            <asp:Label ID="alarm_lable" CssClass="" runat="server" Text=""></asp:Label>
                                        </div>

                                    </div>
                                    <div class="col-md-3"></div>
                                </div>

                            </div>
                            <div class="col-md-1"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3 register-left">
                <div class="re-box">
                    <asp:Image ID="Image1" CssClass="register-left img" src="Photos/saveLife2.jpg"  runat="server" />
                    <a href="donHistory.aspx" class="tColor">רשימת התרומות שלך</a>
                </div>
            </div>
            `
        </div>
    </div>
</asp:Content>
