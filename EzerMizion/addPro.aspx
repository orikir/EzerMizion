<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="addPro.aspx.cs" UnobtrusiveValidationMode="None" Inherits="EzerMizion.addPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .adding {
            margin-top: 1%;
            padding: 3%;
        }

        .adding-right {
            background: #f8f9fa;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
        }

        .adding .adding-form {
            padding: 10%;
            margin-top: 10%;
        }

        .btnadding {
            margin-top: 10%;
            margin-left: 25%;
            margin-right: 50%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: white;
            color: #000;
            font-weight: 600;
            width: 25%;
            direction: rtl;
        }

        .btnUp {
            margin-left: 25%;
            margin-bottom: 2%;
            border: none;
            border-radius: 1.5rem;
            padding: 1% 0 1% 0;
            color: #000;
            font-weight: 600;
            width: 50%;
            direction: rtl;
        }

        .btnUp1 {
            /margin: 1% 2% 1% 2%;
            border: none;
            padding: 1% 10% 1% 0;
            color: #000;
            font-weight: 600;
            width: 100%;
            direction: rtl;
        }

        .adding-heading {
            text-align: center;
            margin-top: 8%;
            margin-bottom: -15%;
            color: #000;
        }

        .labStyle {
            margin-top: 5%;
            margin: 5% 0 0 30%;
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
    <div class="container adding">
        <div class="row">
            <div class="col-md-12 adding-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="adding-heading ">הוספת מוצר</h3>
                        <div class="row adding-form">
                            <div class="col-md-2"></div>
                            <div class="col-md-10">
                                <div class="row form-group">
                                    <div class="col-5">
                                        <asp:TextBox ID="proPrice" MaxLength="9" runat="server" class="form-control" placeholder="מחיר *" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס מחיר" ControlToValidate="proPrice"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class=" col-5">
                                        <asp:TextBox ID="proName" runat="server" MaxLength="10" class="form-control" placeholder="שם מוצר *" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס שם מוצר" ControlToValidate="proName"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-5">
                                        <asp:TextBox ID="quantity" runat="server" class="form-control" MaxLength="9" placeholder="כמות *" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס כמות" ControlToValidate="quantity"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class=" col-5">
                                        <asp:ListBox ID="branchName" CssClass="form-control" runat="server" DataMember="DefaultView" DataSourceID="SqlDataSource1" DataTextField="branchName" onchange="ListBox1_SelectedIndexChanged" AutoPostBack="true" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" DataValueField="branchName" OnTextChanged="ListBox1_SelectedIndexChanged" ViewStateMode="Inherit" Width="100%" Rows="1" Height="40px"></asp:ListBox>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT [branchName] FROM [branches]"></asp:SqlDataSource>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="vStyle" ErrorMessage="יש לבחור סניף" ControlToValidate="quantity"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-2">
                                        <asp:Label runat="server" ID="bLabel" CssClass=" vStyle" Text="בחר סניף:"> </asp:Label>
                                    </div>

                                </div>
                                <div class="row form-group">
                                    <div class="col-5">
                                        <asp:FileUpload ID="FileUpload1" CssClass="btnUp1" runat="server" />
                                        <asp:Button ID="Button1" runat="server" CssClass="btnUp" Text="העלאה" OnClick="SavePicture" />
                                        <asp:Label ID="lblMessage" runat="server" CssClass="labStyle" Text=""></asp:Label>
                                    </div>
                                    <div class="col-5">
                                        <asp:TextBox ID="photo" runat="server" class="form-control" placeholder="תמונה *" value=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="vStyle" ErrorMessage="יש להכניס שם תמונה" ControlToValidate="quantity"></asp:RequiredFieldValidator>
                                    </div>

                                    <div class="col-2"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col-12">
                                        <asp:Button ID="submit" runat="server" Text="הוספה" OnClick="submit_Click" type="submit" class="btnadding" value="adding" />
                                        <asp:Label ID="alarm_lable" runat="server" CssClass="labStyle" Text=""></asp:Label>
                                    </div>
                                    
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    </div>
</asp:Content>
