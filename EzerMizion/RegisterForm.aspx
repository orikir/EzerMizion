﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="EzerMizion.RegisterForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .register{
    background: -webkit-linear-gradient(left, #f8f9fa, #f8f9fa);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #000;
    margin-top: 4%;
   direction: rtl;
}
.register-left input{
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
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}

.register-left p{
    
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    position:center;
    text-align:center;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #f8f9fa;
    color: #000;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container register">
                <div class="row">
                    <div class="col-md-9 register-right">
                
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">רישום</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="User Name *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="birthDay" class="form-control"  placeholder="Your Birthday *" value="" />
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="id" class="form-control" placeholder="ID *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="id" class="form-control"  placeholder="Confirm ID *" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtEmpPhone" class="form-control" placeholder="Your Phone *" value="" />
                                        </div>
                                            
                                      <div id="register-link" class="text-center">
                                             <a href="#" class="text-info">Submit</a>
                                      </div>
                                    <button   ID="submit" ruant="server" Text="Button" type="submit" class="btnRegister"  value="Register"  />Sign Up</button>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                    <div class="col-md-3 register-left">
                        <br>
                        <br />
                        <h3 >ברוכים הבאים</h3>
                        <p >אתם 30 שניות מלהצטרף למעגל הנתינה שלנו!</p>
                        <br>
                        <div id="register-link" class="text-center">
                                <a href="LoginForm.aspx" class="text-info">Login</a>
                        </div>
                        <br/>
                    </div>
                </div>

            </div>
</asp:Content>
