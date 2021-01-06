<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="shoppingCart.aspx.cs" Inherits="EzerMizion.shoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        .cart-wrap {
            padding: 10% 0;
        }

        .main-heading {
            margin-bottom: 1%;
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
                font-family: 'Nunito';
            }

            .table-cart tr td .quanlity {
                position: relative;
            }

        .product-count .qtyminus,
        .product-count .qtyplus {
            width: 34px;
            height: 34px;
            background: transparent;
            text-align: center;
            font-size: 19px;
            line-height: 34px;
            color: #000;
            cursor: pointer;
            font-weight: 600;
        }

        .product-count .qtyminus {
            line-height: 32px;
        }

        .product-count .qtyminus {
            border-radius: 3px 0 0 3px;
            border: 1% #000;
        }

        .product-count .qtyplus {
            border-radius: 0 3px 3px 0;
            border: 1% #000;
        }

        .product-count .qty {
            width: 60px;
            text-align: center;
            border: none;
        }

        .count-inlineflex {
            display: inline-flex;
            border: solid 2px #ccc;
            border-radius: 20px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <div class="cart-wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="main-heading">Shopping Cart</div>
                    <div class="table-cart">
                        <table>
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td>
                                                <div class="display-flex align-center">
                                                    <div class="img-product">
                                                        <asp:Image ID="Image1" class="mCS_img_loaded" runat="server" Width="100" hight="100" ImageUrl='<%#Eval("proPhoto", "Photos/{0}") %>' />
                                                    </div>
                                                    <div class="product-content">
                                                        <asp:Label ID="pName" class="title" runat="server" Text='<%#Eval("proName") %>'></asp:Label>
                                                        <div class="price">
                                                            <asp:Label ID="pPrice" class="price" runat="server" Text='<%#Eval("proPrice") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="product-count">
                                                <form action="#" class="count-inlineflex">
                                                    <asp:ListBox ID="quan" runat="server" Rows="1" OnLoad="ListBox1_SelectedIndexChanged" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"  OnTextChanged="ListBox1_SelectedIndexChanged" ViewStateMode="Inherit" >
                                                    <asp:ListItem> בחר כמות</asp:ListItem>
                                                    </asp:ListBox>
                                                </form>
                                            </td>
                                            <td>
                                                <div class="total">
                                                    <asp:Label ID="totalP" runat="server" Text=""></asp:Label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#" title="">
                                                    <img src="images/icons/delete.png" alt="" class="mCS_img_loaded">
                                                </a>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                        <div class="coupon-box">

                            <div class="coupon-input">
                                <asp:TextBox ID="couponCode" placeholder="Coupon Code" Width="40%" Height="70%" runat="server" type="text"></asp:TextBox>
                                <asp:Button ID="submit" class="round-black-btn" runat="server" Width="40%" Height="70%" Text="Apply Coupon" />
                            </div>

                        </div>
                    </div>
                    <!-- /.table-cart -->
                </div>

                <div class="col-md-4">
                    <div class="cart-totals">
                        <h3>Cart Totals</h3>
                        <form action="#" method="get" accept-charset="utf-8">
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Subtotal</td>
                                        <td class="subtotal">$</td>
                                    </tr>
                                    <tr>
                                        <td>Shipping</td>
                                        <td class="free-shipping">Free Shipping</td>
                                    </tr>
                                    <tr class="total-row">
                                        <td>Total</td>
                                        <td class="price-total">$</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="btn-cart-totals">
                                <a href="#" class="update round-black-btn" title="">Update Cart</a>
                                <a href="#" class="checkout round-black-btn" title="">Proceed to Checkout</a>
                            </div>
                            <!-- /.btn-cart-totals -->
                        </form>
                        <!-- /form -->
                    </div>
                    <!-- /.cart-totals -->
                </div>
                <!-- /.col-lg-4 -->
            </div>
        </div>
    </div>
</asp:Content>
