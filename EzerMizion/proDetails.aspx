﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proDetails.aspx.cs" Inherits="EzerMizion.proDetails" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>eCommerce Product Detail</title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <style>
        body {
            font-family: Calibri;
            float: right;
            direction: rtl;
            backface-visibility: hidden;
            background-color: rgb(255 255 255 / 0.30);
        }

        .descr {
            font-family: Calibri;
            float: right;
            direction: rtl;
            font-size: 20;
        }

        img {
            max-width: 100%;
        }

        .preview {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -webkit-flex-direction: column;
            -ms-flex-direction: column;
            flex-direction: column;
        }

        @media screen and (max-width: 996px) {
            .preview {
                margin-bottom: 20px;
            }
        }

        .preview-pic {
            -webkit-box-flex: 1;
            -webkit-flex-grow: 1;
            -ms-flex-positive: 1;
            flex-grow: 1;
        }

        .preview-thumbnail.nav-tabs {
            border: none;
            margin-top: 15px;
        }

            .preview-thumbnail.nav-tabs li {
                width: 18%;
                margin-right: 2.5%;
            }

                .preview-thumbnail.nav-tabs li img {
                    max-width: 100%;
                    display: block;
                }

                .preview-thumbnail.nav-tabs li a {
                    padding: 0;
                    margin: 0;
                }

                .preview-thumbnail.nav-tabs li:last-of-type {
                    margin-right: 0;
                }

        .tab-content {
            overflow: hidden;
        }

            .tab-content img {
                width: 100%;
                -webkit-animation-name: opacity;
                animation-name: opacity;
                -webkit-animation-duration: .3s;
                animation-duration: .3s;
            }

        .card {
            margin-top: 50px;
            background: #eee;
            padding: 3em;
            line-height: 1.5em;
        }

        @media screen and (min-width: 997px) {
            .wrapper {
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
            }
        }

        .details {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -webkit-flex-direction: column;
            -ms-flex-direction: column;
            flex-direction: column;
        }

        .colors {
            -webkit-box-flex: 1;
            -webkit-flex-grow: 1;
            -ms-flex-positive: 1;
            flex-grow: 1;
        }

        .product-title, .price, .sizes, .colors {
            font-family: Calibri;
            float: right;
            direction: rtl;
            font-size: 30;
            font-weight: bold;
        }

            .checked, .price span {
                color: #ff9f1a;
            }

        .product-title, .rating, .product-description, .price, .vote, .sizes {
            margin-bottom: 15px;
        }

        .product-title {
            margin-top: 0;
        }

        .size {
            margin-right: 10px;
        }

            .size:first-of-type {
                margin-left: 40px;
            }

        .color {
            display: inline-block;
            vertical-align: middle;
            margin-right: 10px;
            height: 2em;
            width: 2em;
            border-radius: 2px;
        }

            .color:first-of-type {
                margin-left: 20px;
            }

        .add-to-cart, .like {
            background: #ff9f1a;
            padding: 1.2em 1.5em;
            border: none;
            text-transform: UPPERCASE;
            font-weight: bold;
            color: #fff;
            -webkit-transition: background .3s ease;
            transition: background .3s ease;
        }

            .add-to-cart:hover, .like:hover {
                background: #b36800;
                color: #fff;
            }

        .not-available {
            text-align: center;
            line-height: 2em;
        }

            .not-available:before {
                font-family: fontawesome;
                content: "\f00d";
                color: #fff;
            }

        .orange {
            background: #ff9f1a;
        }

        .green {
            background: #85ad00;
        }

        .blue {
            background: #0076ad;
        }

        .tooltip-inner {
            padding: 1.3em;
        }

        @-webkit-keyframes opacity {
            0% {
                opacity: 0;
                -webkit-transform: scale(3);
                transform: scale(3);
            }

            100% {
                opacity: 1;
                -webkit-transform: scale(1);
                transform: scale(1);
            }
        }

        @keyframes opacity {
            0% {
                opacity: 0;
                -webkit-transform: scale(3);
                transform: scale(3);
            }

            100% {
                opacity: 1;
                -webkit-transform: scale(1);
                transform: scale(1);
            }
        }
    </style>
</head>
<body scrollbars="no" resizable="no">
    <form id="form1" runat="server">

        <div class="container">
            <div class="card">
                <div class="container-fliud">
                    <div class="wrapper row">
                        <div class="preview col-md-6">
                        </div>
                        <div class="details col-md-6">
                            <h3 class="product-title">תיאור מוצר</h3>
                        </div>
                        <div>
                            <asp:Label ID="Label1" CssClass="descr" runat="server" Text=""></asp:Label>
                        </div>

                        <%-- <h5 class="sizes">sizes:
						
                                <span class="size" data-toggle="tooltip" title="small">s</span>
                                <span class="size" data-toggle="tooltip" title="medium">m</span>
                                <span class="size" data-toggle="tooltip" title="large">l</span>
                                <span class="size" data-toggle="tooltip" title="xtra large">xl</span>
                            </h5>--%>
                        <%--<h5 class="colors">colors:
						
                                <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
                                <span class="color green"></span>
                                <span class="color blue"></span>
                            </h5>--%>
                        <%--<div class="action">
                            <button class="add-to-cart btn btn-default" type="button">add to cart</button>
                            <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <%-- OnClientClick=" javascript:window.open('proDetails.aspx','List','scrollbars=no,resizable=no,width=400,height=280'); return false;"--%>
    </form>
</body>
</html>
