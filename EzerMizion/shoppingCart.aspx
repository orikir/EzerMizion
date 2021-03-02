<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs"  UnobtrusiveValidationMode="None" Inherits="EzerMizion.shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        .cart-wrap {
            padding: 10% 0;
        }

        .main-heading {
            margin-bottom: 5%;
            text-align: center;
            font-size: x-small;
        }

        .table-cart table {
            width: 100%;
        }

        .table-cart thead {
            border-bottom: 5px solid #e5e5e5;
            margin-bottom: 0.1%;
        }

            .table-cart thead tr th {
                padding: 5% 0 3% 5%;
                color: #484848;
                font-weight: 400;
            }

        .table-cart tr td {
            padding: 40px 0 27px;
            vertical-align: middle;
        }

            .table-cart tr td:nth-child(1) {
                width: 52%;
            }

            .table-cart tr td:nth-child(2) {
                width: 26%;
            }

            .table-cart tr td:nth-child(3) {
                width: 13.333%;
            }

            .table-cart tr td:nth-child(4) {
                width: 8.667%;
                text-align: right;
            }

            .table-cart tr td .img-product {
                width: 72px;
                float: left;
                margin-left: 8px;
                margin-right: 31px;
                line-height: 63px;
            }

                .table-cart tr td .img-product img {
                    width: 100%;
                }

            .table-cart tr td .name-product {
                font-size: 15px;
                color: #484848;
                padding-top: 8px;
                line-height: 24px;
                width: 50%;
            }

            .table-cart tr td .price {
                text-align: right;
                line-height: 64px;
                margin-right: 40px;
                color: #989898;
                font-size: 16px;
            }

            .table-cart tr td .quanlity {
                position: relative;
            }

        .product-count .qtyminus,
        .product-count .qtyplus {
            width: 10%;
            height: 10%;
            padding: 0 1% 1% 1%;
            text-align: center;
            font-size: 100%;
            / border-radius:30% 30%;
            line-height: 150%;
            color: #000;
            font-weight: 600;
        }


        .product-count .qtyminus {
            border-radius: 3px 0 0 3px;
            border: 50px #000;
        }

        .product-count .qtyplus {
            border-radius: 0 3px 3px 0;
            border: 50px #000;
        }

        .product-count .qty {
            width: 70%;
            text-align: center;
            border: none;
        }


        .total {
            font-size: 24px;
            font-weight: 600;
            color: #000;
        }

        .display-flex {
            display: flex;
        }

        .align-center {
            align-items: center;
        }

        .coupon-box {
            padding: 5%;
            text-align: center;
            border-top: 5px dotted #e5e5e5;
            margin-top: 1%;
        }

            .coupon-box form input {
                display: inline-block;
                width: 40%;
                margin-right: 3%;
                //height: 70%;
                border: solid 1px #cccccc;
                padding: 2% 10%;
                font-size: 100%;
            }

        input:focus {
            outline: none;
            box-shadow: none;
        }

        .round-black-btn {
            background: #212529;
            color: #fff;
            padding: 2% 10%;
            display: inline-block;
            border: solid 1px #212529;
            //transition: all 0.5s ease-in-out 0s;
            //cursor: pointer;
        }

            .round-black-btn:hover,
            .round-black-btn:focus {
                background: transparent;
                color: #212529;
                text-decoration: none;
            }

        .cart-totals {
            border-radius: 3px;
            background: #e7e7e7;
            padding: 25px;
        }

            .cart-totals h3 {
                font-size: 19px;
                color: #3c3c3c;
                letter-spacing: 1px;
                font-weight: 500;
            }

            .cart-totals table {
                width: 100%;
            }

                .cart-totals table tr th,
                .cart-totals table tr td {
                    width: 50%;
                    padding: 3px 0;
                    vertical-align: middle;
                }

                    .cart-totals table tr td:last-child {
                        text-align: right;
                    }

                    .cart-totals table tr td.subtotal {
                        font-size: 20px;
                        color: #6f6f6f;
                    }

                    .cart-totals table tr td.free-shipping {
                        font-size: 14px;
                        color: #6f6f6f;
                    }

                .cart-totals table tr.total-row td {
                    padding-top: 25px;
                }

                .cart-totals table tr td.price-total {
                    font-size: 24px;
                    font-weight: 600;
                    color: #000;
                }

        .btn-cart-totals {
            text-align: center;
            margin-top: 60px;
            margin-bottom: 20px;
        }

            .btn-cart-totals .round-black-btn {
                margin: 5% 0;
            }

        .code {
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <div class="cart-wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="cart-totals">
                        <h3 style="text-align:center">סיכום עגלת קניות</h3>
                        <form action="#" method="get" accept-charset="utf-8">
                            <table>
                                <tbody>
                                    <tr class="total-row">
                                        <td class="price-total">
                                            ₪<asp:Label ID="cartSum" runat="server" Text=""></asp:Label>
                                        </td>
                                        <td style="direction:rtl">סה"כ לתשלום:</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="btn-cart-totals">
                                <asp:Button ID="checkout" class="checkout round-black-btn" runat="server" Text="אישור ומעבר לתשלום" OnClick="checkout_Click" />
                            </div>
                            <!-- /.btn-cart-totals -->
                        </form>
                        <!-- /form -->
                    </div>
                    <!-- /.cart-totals -->
                </div>
                <div class="col-md-8">
                    <div class="main-heading ">
                        <h3>עגלת קניות</h3>
                    </div>
                    <div class="table-cart">
                        <div class="row" style="text-align: center;">
                            <div class="col-md-2"></div>
                            <div class="col-md-2">
                                <a>מחיר כולל</a>
                            </div>
                            <div class="col-md-3">
                                <a>כמות</a>
                            </div>
                            <div class="col-md-5">
                                <a>מוצר</a>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Button ID="Button1" runat="server" Text="" Height="1px" Width="100%" BorderColor="White" />
                        </div>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="row display-flex align-center" style="text-align: center;">
                                    <div class="col-md-2">
                                        <asp:Button ID="delete" runat="server" CommandName='<%# Eval("proCode")%>' Text="הסרה" class="mCS_img_loaded" OnClick="delete_Click" />
                                    </div>
                                    <div class="col-md-2">
                                        <div class="total">
                                            ₪<asp:Label ID="totalP" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                                        </div>
                                    </div>
                                    <div class="col-md-3 product-count">
                                        <div class="count-inlineflex">
                                            <asp:Button ID="minus" class="qtyminus" runat="server" Text="-" OnClick="minus_Click" />
                                            <asp:Label ID="quantity" class="qty" runat="server" Text='<%#Eval("amount") %>'></asp:Label>
                                            <asp:Button ID="plus" class="qtyplus" runat="server" Text="+" OnClick="plus_Click" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="product-content">
                                            <asp:Label ID="pName" class="title" runat="server" Text='<%#Eval("proName") %>'></asp:Label>
                                            <asp:Label ID="proCode" class="code" runat="server" Text='<%#Eval("proCode") %>'></asp:Label>
                                            <div class="price">
                                                ₪<asp:Label ID="pPrice" runat="server" Text='<%#Eval("proPrice") %>'></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 ">
                                        <div class="img-product">
                                            <asp:ImageButton ID="ImageButton2" class="mCS_img_loaded" runat="server" Width="100" hight="100" ImageUrl='<%#Eval("proPhoto", "Photos/{0}") %>' />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- /.table-cart -->
                </div>

                <!-- /.col-lg-4 -->
            </div>
        </div>
    </div>
</asp:Content>
