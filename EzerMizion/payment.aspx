<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="EzerMizion.payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .pay {
            background: -webkit-linear-gradient(left, #f8f9fa, #f8f9fa);
            margin-top: 3%;
            padding: 3%;
        }

        .pay-left {
            text-align: center;
            color: #000;
            padding-top: 15%;
            padding-bottom: 15%;
            direction: rtl;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
            background-color: white;
        }

            .pay-left input {
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

        .pay-right {
            background: #f8f9fa;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
            padding-top: 7%;
        }

        .pay-left img {
            margin-top: 15%;
            margin-bottom: 5%;
            width: 25%;
            -webkit-animation: mover 2s infinite alternate;
            animation: mover 1s infinite alternate;
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
            position: center;
            text-align: center;
            margin-top: 10%;
            margin-left: 25%;
            margin-right: 50%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: white;
            color: #000;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
        }

        .pay-heading {
            text-align: center;
            margin-top: -1%;
            margin-bottom: -15%;
            color: #000;
        }

        .tColor {
            color: #73d3f2;
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
                                    <asp:Label ID="Label1" class="control-label vStyle" runat="server" Text="תעודת זהות"></asp:Label>
                                    <asp:TextBox ID="ownerId" class="form-control" placeholder="תעודת זהות*" runat="server" Text=""></asp:TextBox>
                                </div>
                                <div class=" col-md-6">
                                    <asp:Label ID="Label2" class="control-label vStyle" runat="server" Text="מספר כרטיס"></asp:Label>
                                    <asp:TextBox ID="cardNum" class="form-control " runat="server" Text=""></asp:TextBox>
                                </div>
                            </div>
                            <div class="row form-group">
                            <!-- Expiry-->
                                <div class="col-md-1">
                                    <asp:Label ID="Label3" class="control-label vStyle" runat="server" Text="תוקף"></asp:Label>
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
                                    <asp:TextBox ID="cardCvc" class="form-control" runat="server" Text=""></asp:TextBox>
                                </div>
                            </div>
                            <!-- Submit -->
                            <div class="row ">
                                <div class="col-md-2"> </div>
                                <div class="col-md-8">
                                    <asp:Button ID="submit" class="btn btn-success" runat="server" Text="אישור תשלום" OnClick="submit_Click" />
                                </div>
                                <div class="col-md-2"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 pay-left">
                <div class="re-box">
                    <h3>-</h3>
                    <p>!</p>
                    <br>
                    <div id="pay-link1" class="text-center">
                        <a href="LoginForm.aspx" class="tColor">להתחברות לחץ כאן</a>
                    </div>
                    <br />
                </div>

            </div>
        </div>

    </div>

</asp:Content>
