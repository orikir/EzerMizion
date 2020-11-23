<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="addPro.aspx.cs"  UnobtrusiveValidationMode="None" Inherits="EzerMizion.addPro" %>
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
            margin-top: 4%;
            direction: rtl;
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
            padding: 10%;
            margin-top: 10%;
        }

        .btnRegister {
            position: center;
            text-align: center;
            margin-top: 10%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: white;
            color: #000;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
        }

        .register-heading {
            text-align: center;
            margin-top: 8%;
            margin-bottom: -15%;
            color: #000;
        }

        .tColor {
            color: #73d3f2;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container register">
        <div class="row">
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="register-heading ">הוספת מוצר</h3>
                        <div class="row register-form">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="proName" runat="server" class="form-control" placeholder="שם מוצר *" value=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="יש להכניס שם מוצר" ControlToValidate="proName"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    
                                    <asp:CheckBox ID="isInStock1" class="form-control"  runat="server" />
                                    
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="quantity" runat="server" class="form-control" placeholder="כמות *" value=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="יש להכניס כמות" ControlToValidate="quantity"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="branchCode" runat="server" class="form-control" placeholder="קוד סניף *" value=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="יש להכניס קוד סניף" ControlToValidate="branchCode"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="proPhoto" runat="server" class="form-control" placeholder="תמונה *" value=""></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="proPrice" runat="server" class="form-control" placeholder="מחיר *" value=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="יש להכניס מחיר" ControlToValidate="proPrice"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="submit" runat="server" Text="הוספה" OnClick="submit_Click" type="submit" class="btnRegister" value="Register" />
                                    <asp:Label ID="alarm_lable" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 register-left">
                <br>
                <br />
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
</asp:Content>
