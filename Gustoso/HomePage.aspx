<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Gustoso.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
       
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
    <div class="container" style="font-family: &quot;Palatino Linotype&quot;;">
       <div class="row">
            <div class="col-md-6 ">
              <h1 class="display-4 font-italic text-center" style="font-family: &quot;Lucida Sans Unicode&quot;"><span style="font-style: normal; font-family: &quot;Palatino Linotype&quot;;">Italyian Food</span></h1>
              <h2 class="display-5 font-italic text-center" style="font-family: &quot;Lucida Sans Unicode&quot;"><span style="font-style: normal; font-family: &quot;Palatino Linotype&quot;;">eat &amp; enjoy</span></h2>
                <form role="form">
                <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                    </div>
                    <input class="form-control" placeholder="Name" type="text">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                    </div>
                    <input class="form-control" placeholder="Email" type="email">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                    </div>
                    <input class="form-control" placeholder="Password" type="password">
                  </div>
                </div>
                
                <div class="text-center">
                  <button type="button" class="btn btn-primary mt-4">Create account</button>
                </div>
                <div class="text-center">
                  <textbox>I already have account </textbox><a href="Register.aspx"> Sign in</a>
                </div>
                  
                
              </form> 
            </div>
            <div class="col-md-6 ">
                <img class="container-center" src="photos/table2.jpg" />
            </div>
       </div>
    </div>
        
</asp:Content>
