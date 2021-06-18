<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="proDetails.aspx.cs" Inherits="EzerMizion.proDetails" %>
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

</head>
<body scrollbars="no" resizable="no">
    <form id="form1" runat="server">

        <div class="container">
            <div class="card">
                <div class="container-fliud">
                    <div class="wrapper row">
                        <div class="preview col-md-6">

                            <div class="preview-pic tab-content">
                                <div class="tab-pane active" id="pic-1">
                                    <img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-2">
                                    <img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-3">
                                    <img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-4">
                                    <img src="http://placekitten.com/400/252" /></div>
                                <div class="tab-pane" id="pic-5">
                                    <img src="http://placekitten.com/400/252" /></div>
                            </div>
                            

                        </div>
                        <div class="details col-md-6">
                            <h3 class="product-title">men's shoes fashion</h3>
                            <div class="rating">
                                <div class="stars">
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star checked"></span>
                                    <span class="fa fa-star"></span>
                                    <span class="fa fa-star"></span>
                                </div>
                                <span class="review-no">41 reviews</span>
                            </div>
                            <div>
                                <asp:Label ID="Label1" class="product-description" runat="server" Text=""></asp:Label>
                            </div>
                            <h4 class="price">current price: <span>$180</span></h4>
                            <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
                            <h5 class="sizes">sizes:
						
                                <span class="size" data-toggle="tooltip" title="small">s</span>
                                <span class="size" data-toggle="tooltip" title="medium">m</span>
                                <span class="size" data-toggle="tooltip" title="large">l</span>
                                <span class="size" data-toggle="tooltip" title="xtra large">xl</span>
                            </h5>
                            <h5 class="colors">colors:
						
                                <span class="color orange not-available" data-toggle="tooltip" title="Not In store"></span>
                                <span class="color green"></span>
                                <span class="color blue"></span>
                            </h5>
                            <div class="action">
                                <button class="add-to-cart btn btn-default" type="button">add to cart</button>
                                <button class="like btn btn-default" type="button"><span class="fa fa-heart"></span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%-- OnClientClick=" javascript:window.open('proDetails.aspx','List','scrollbars=no,resizable=no,width=400,height=280'); return false;"--%>
    </form>
</body>
</html>
