<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="payment.aspx.cs" Inherits="EzerMizion.payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .pay {
            background: -webkit-linear-gradient(left, #f8f9fa, #f8f9fa);
            margin-top: 3%;
            padding: 3%;
        }
        body {
           background-image: url('Photos/bG.png');
           background-size: 120%;
           color: black ;
        }

        .pay-left {
            text-align: center;
            color: black;
            text-emphasis-style:double-circle;
            padding-top: 12%;
            padding-bottom: 10%;
            direction: rtl;
            background-color:white;
        }

            .pay-left input {
                border: none;
                border-radius: 1.5rem;
                // padding: 2%;
                width: 60%;
                background: #f8f9fa;
                font-weight: bold;
                color: #383d4;
                margin-top: 30%;
                margin-bottom: 3%;
                cursor: pointer;
            }

        .pay-right {
            background: #f8f9fa;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
            padding-top: 7%;
        }

        .pay-left img {
           
            width: 100%;
            height: 10%;
            /-webkit-animation: mover 2s infinite alternate;
            /animation: mover 1s infinite alternate;
        }

        .pay-left p {
            font-weight: lighter;
            padding: 12%;
            margin-top: -9%;
        }

        .pay .pay-form {
            padding: 10%;
            margin-top: 10%;
        }

        .btnPay {
            text-align: center;
            margin: 1% 1% 1% 25%;
            border: none;
            padding: 5% 5% 10% 5%;
            background: red;
            color: white;
            font-weight: 600;
            height: 70%;
            width: 60%;
            cursor: pointer;
        }

        .pay-heading {
            text-align: center;
            margin-top: -1%;
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

        .form-group {
            margin: 2% 2% 2% 2%;
            direction: rtl;
        }

        .form-control {
            direction: rtl;
        }

        .part {
            margin: 0% 0.5% 0% 0.5%;
        }

        .vStyle {
            direction: rtl;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container pay">
        <div class="row">
            <div class="col-md-9 pay-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="pay-heading">תשלום</h3>
                        <div class="row pay-form">
                            <!-- Name -->
                            <div class="row form-group">
                                <div class=" col-md-6">
                                    <asp:Label ID="Label1" class="control-label vStyle" runat="server" Text=" תעודת זהות של בעל הכרטיס"></asp:Label>
                                    <asp:TextBox ID="ownerId" class="form-control" placeholder="תעודת זהות של בעל הכרטיס *" runat="server" Text=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס תעודת זהות" ControlToValidate="ownerId"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="vStyle" ErrorMessage="תעודת זהות לא תקנית" ValidationExpression="\d{9}" ControlToValidate="ownerId"></asp:RegularExpressionValidator>
                                </div>
                                <div class=" col-md-6">
                                    <asp:Label ID="Label2" class="control-label vStyle" runat="server" Text="מספר כרטיס"></asp:Label>
                                    <asp:TextBox ID="cardNum" class="form-control " runat="server" Text="" placeholder="מספר כרטיס*"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס מספר כרטיס אשראי" ControlToValidate="cardNum"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="vStyle" ErrorMessage="מספר הכרטיס לא תקני" ValidationExpression="\d{14}" ControlToValidate="cardNum"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="row form-group">
                                <!-- Expiry-->
                                <div class="col-md-1">
                                    <asp:Label ID="Label3" class="control-label vStyle" runat="server" Text="תוקף:"></asp:Label>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="Month" class="form-control" runat="server" OnSelectedIndexChanged="Month_SelectedIndexChanged" ForeColor="Black">
                                        <asp:ListItem>בחר חודש </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <asp:DropDownList ID="Year" class="form-control" runat="server" OnSelectedIndexChanged="Year_SelectedIndexChanged" ForeColor="Black">
                                        <asp:ListItem> בחר שנה</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <!-- CVV -->
                                <div class=" col-md-1">
                                    <asp:Label ID="Label4" class="control-label " runat="server" Text="CVV"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <asp:TextBox ID="cardCvv" placeholder="CVV*" class="form-control" runat="server" Text=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס שלוש ספרות בגב הכרטיס" ControlToValidate="cardCvv"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="vStyle" ErrorMessage="מספר לא תקני" ValidationExpression="\d{3}" ControlToValidate="cardCvv"></asp:RegularExpressionValidator>
                                </div>
                        </div>
                        <!-- Submit -->

                    </div>
                    <div class="row  ">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <asp:Button ID="submit" class="btnPay" runat="server" Text="אישור תשלום" OnClick="submit_Click" />
                            <br />
                            <asp:Label ID="Label5" class="control-label " runat="server" Text=""></asp:Label>
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 pay-left ">
            <div class="re-box">

                <asp:Image ID="Image2" CssClass="pay-left img" src="Photos/shop.jpg" runat="server" />
                <p>רפואה שלמה!</p>
            </div>
        </div>
    </div>

    </div>

</asp:Content>
