<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomeP.aspx.cs" Inherits="EzerMizion.HomeP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css">
    <style>
        .firstRow {
            margin: 2% 0% 2% 0%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <div class="jumbotron   ">
        <div class="row">
            <div class="col-md-6">
                <asp:Image ID="Image1" runat="server" style="width:400px; height: 450px; " src="Photos/logo.png" />
            </div>
            <div class="col-md-6">
                <asp:Image ID="Image2" runat="server" src="Photos/logo2.png" />
                <br>
                  <p class="lead my-3 " style="direction: rtl; text-align: justify;"> המוטו של "עזר מציון" הינו הבחירה בחיים: הרצון האמיתי והמאמץ האדיר לתת לכל אדם באשר הוא, ויהיה מצבו קשה ככל שיהיה, את ההזדמנות לבחור בחיים.
                    "עזר מציון" מלווה את הנעזרים בכל שלבי ההתמודדות – עוטפת את החולים ומשפחותיהם בחום, באהבה ובמערך רחב של שירותים ייחודיים וחדשניים הניתנים בצורה מקצועית.
                שירותי העמותה ניתנים באמצעות כ – 14 מחלקות ו – 30,000 מתנדבים ב- 58 מוקדי פעילות הפרושים על פני 31 ערים, בכל רחבי המדינה. מעל 720,000 איש מכל הרקעים, המגזרים והגילאים, מסתייעים בשירותי העמותה מדי שנה .</p>
            </div>
        </div>
      </div>
        
      <div class="row ">
       <div class="col-md-6">
          <div class="card flex-md-row mb-4" >
            <img class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]" src="Photos/bdika.jpg" " data-holder-rendered="true" style="width: 200px; height: 250px;"/>
              <div class="card-body d-flex flex-column align-items-start" style="direction:rtl;">
              <h3 class="mb-0">
                <a class="text-dark" style="direction:rtl;" href="#">אודות המאגר </a>
              </h3>
              <p class="card-text mb-auto" style="direction:rtl;text-align: justify;"> "עזר מציון" הקימה בשנת 1998 את המאגר הלאומי לתורמי מח עצם. המאגר הוקם במטרה לסייע לחולי סרטן ולחולים במחלות קשות אחרות למצוא תורם מח עצם מתאים ובכך להציל את חייהם</p>
              <a href="info1.aspx">להמשך קריאה</a>
            </div>
          </div>
        </div>
       <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250" >
            <img class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]" src="Photos/donations.jpg" " data-holder-rendered="true" style="width: 200px; height: 250px;">
              <div class="card-body d-flex flex-column align-items-start" style="direction:rtl;">
              <h3 class="mb-0">
                <a class="text-dark" style="direction:rtl;" href="#">מי אנחנו?</a>
              </h3>
              <p class="card-text mb-auto" style="direction:rtl;text-align: justify;">שירותי העמותה ניתנים באמצעות כ – 14 מחלקות ו – 30,000 מתנדבים ב- 58 מוקדי פעילות הפרושים על פני 31 ערים, בכל רחבי המדינה. מעל 720,000 איש מכל הרקעים, המגזרים והגילאים, מסתייעים בשירותי העמותה מדי שנה.</p>
              <a href="info2.aspx">להמשך קריאה</a>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>
