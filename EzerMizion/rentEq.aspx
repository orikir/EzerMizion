<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="rentEq.aspx.cs" Inherits="EzerMizion.rentEq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        h3.h3 {
            text-align: center;
            margin: 1em;
            text-transform: capitalize;
            font-size: 1.7em;
            color: white
        }

        body {
            background-image: url('Photos/bG.png');
            background-size: 100%;
            color: black;
        }

        .product-grid4, .product-grid4 .product-image4 {
            position: relative;
            padding-top: 2%
        }

        .product-grid4 {
            font-family: Poppins,sans-serif;
            text-align: center;
            border-radius: 5px;
            overflow: hidden;
            z-index: 1;
            margin-bottom: 3%;
            transition: all .3s ease 0s;
            background-color: white;
        }

            .product-grid4:hover {
                box-shadow: 0 0 10px rgba(0,0,0,.2);
            }

            .product-grid4 .product-image4 a {
                display: block;
            }

            .product-grid4 .product-image4 img {
                width: 200px;
                height: 180px;
            }

            .product-grid4 .pic-1 {
                opacity: 1;
                transition: all .5s ease-out 0s
            }

            .product-grid4:hover .pic-1 {
                opacity: 0
            }

            .product-grid4 .pic-2 {
                position: absolute;
                top: 0;
                left: 0;
                opacity: 0;
                transition: all .5s ease-out 0s
            }

            .product-grid4:hover .pic-2 {
                opacity: 1
            }

            .product-grid4 .product-discount-label, .product-grid4 .product-new-label {
                color: #fff;
                background-color: red;
                font-size: 13px;
                font-weight: 800;
                text-transform: uppercase;
                line-height: 45px;
                height: 45px;
                width: 45px;
                border-radius: 50%;
                position: absolute;
                left: 10px;
                top: 15px;
                transition: all .3s
            }

            .product-grid4 .product-discount-label {
                left: auto;
                right: 10px;
                background-color: #d7292a
            }

            .product-grid4:hover .product-new-label {
                opacity: 0
            }

            .product-grid4 .product-content {
                padding: 25px
            }

            .product-grid4 .title {
                font-size: 15px;
                font-weight: 400;
                text-transform: capitalize;
                margin: 0 0 2%;
                transition: all .3s ease 0s
            }

                .product-grid4 .title a {
                    color: #222
                }

                    .product-grid4 .title a:hover {
                        color: red
                    }

            .product-grid4 .price {
                color: red;
                font-size: 17px;
                font-weight: 700;
                margin: 3% 1% 3% 1%;
                display: block
            }

                .product-grid4 .price span {
                    color: #909090;
                    font-size: 13px;
                    font-weight: 400;
                    letter-spacing: 0;
                    text-decoration: line-through;
                    text-align: left;
                    vertical-align: middle;
                    display: inline-block
                }

            .product-grid4 .add-to-cart {
                border: 1px solid #e5e5e5;
                display: inline-block;
                padding: 10px 20px;
                color: #888;
                font-weight: 600;
                font-size: 14px;
                border-radius: 4px;
                transition: all .3s;
                margin-bottom: 1%;
            }

            .product-grid4:hover .add-to-cart {
                border: 1px solid transparent;
                background: red;
                color: #fff;
                margin-bottom: 1%;
            }

            .product-grid4 .add-to-cart:hover {
                background-color: #505050;
                box-shadow: 0 0 10px rgba(0,0,0,.5)
            }

        @media only screen and (max-width:990px) {
            .product-grid4 {
                margin-bottom: 30px
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h3 class="h3">ציוד רפואי </h3>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6">
                        <div class="product-grid4">
                            <div class="product-image4">
                                <a href="#">
                                    <asp:Image ID="Image1" class="pic-1" runat="server" ImageUrl='<%#Eval("proPhoto", "Photos/{0}") %>' />
                                    <asp:Image ID="Image2" class="pic-2" runat="server" ImageUrl='<%#Eval("proPhoto", "Photos/{0}") %>' />
                                </a>
                            </div>
                            <div class="product-content">
                                <asp:Label ID="Label1" class="title" runat="server" Text='<%#Eval("proName") %>'></asp:Label>
                                <asp:Label ID="Label2" class="price" runat="server" Text='<%#Eval("proPrice") %>'></asp:Label>₪
                            </div>
                           
                            <asp:Button ID="d" runat="server" class="add-to-cart"   OnClientClick='<%# "myFunction(\"" + Eval("proCode") + "\"); return false;" %>'  CommandName='<%# Eval("proCode")%>' Text="תיאור מוצר" />
                            <script>
                                function myFunction(myCode) {
                                    var myWindow = window.open("proDetails.aspx?proCode=" + myCode, "_blank", 'scrollbars=no,resizable=no,width=400,height=300 left=' + (screen.width / 2 - 200)+ ',top=' +( screen.height / 2-150));
                                }
                            </script>
                            <asp:Button ID="addTcart" class="add-to-cart" runat="server" OnClientClick="return confirm('המוצר נוסף בהצלחה!');" CommandName='<%# Eval("proCode")%>' Text="הוסף לעגלה" OnClick="addTcart_Click" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
