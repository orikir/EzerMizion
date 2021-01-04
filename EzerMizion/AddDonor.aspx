<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="AddDonor.aspx.cs" Inherits="EzerMizion.AddDonor" %>

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
            padding: 10%;
            margin-top: 10%;
        }

        .btnRegister {
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

        .register-heading {
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
                        <h3 class="register-heading ">תרומה</h3>
                        <div class="row register-form">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <center>
                                <td>
                                 <div class="form-group">
                                    <asp:TextBox ID="id" runat="server" class="form-control" placeholder="תעודת זהות *" value=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="יש להכניס תעודת זהות" CssClass="vStyle" ControlToValidate="id"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="תעודת זהות לא תקנית" CssClass="vStyle" ValidationExpression="\d{9}" ControlToValidate="id"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="identify" runat="server" class="form-control" placeholder="אשר תעודת זהות *" value=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="  יש להקיש תעודת זהות פעם נוספת" CssClass="vStyle" ControlToValidate="identify"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="תעודת זהות לא תקנית" CssClass="vStyle" ValidationExpression="\d{9}" ControlToValidate="identify"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:ListBox ID="orgName" CssClass="form-control" runat="server" DataMember="DefaultView"  DataSourceID="SqlDataSource1" DataTextField="orgName"  onchange="ListBox1_SelectedIndexChanged" AutoPostBack="true" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" DataValueField="orgName" OnTextChanged="ListBox1_SelectedIndexChanged" ViewStateMode="Inherit" Width="420px" Rows="1" Height="40px"></asp:ListBox>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [orgName] FROM [organizations]"></asp:SqlDataSource>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="vStyle" ErrorMessage="יש לבחור שם ארגון" ControlToValidate="orgName"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="dSum" MaxLength="20" runat="server" class="form-control"   placeholder="סכום *" value=""></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס סכום" ControlToValidate="dSum"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="submit" runat="server" Text="הוספה" OnClick="submit_Click" type="submit" class="btnRegister" value="register" />
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
                    <h3>תרמו לעזר מיציון</h3>
                    <p>אתם 30 שניות מלהצטרף למעגל הנתינה שלנו!</p>
                    <br>
                    <div id="register-link1" class="text-center">
                        <a href="LoginForm.aspx" class="tColor">אם תרמת בעבר לחץ כאן</a>
                    </div>
                    <br />
                </div>

            </div>
        </div>

    </div>
</asp:Content>
