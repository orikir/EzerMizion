<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="info2.aspx.cs" Inherits="EzerMizion.info2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .rowImage {
            padding:  0% 25% 0% 25%;
            width: 100%;
            height: 100%;
        }

        .header {
            margin: 1% 0% 1% 0%;
            background-color: #f8f9fa;
            direction: rtl;
            position: center;
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: large;
        }

        .photoD {
            margin: 5% 0% 0% 0%;
            padding: 2% 0% 2% 0%;
            width: 40%;
            height: 40%;
        }

        .p {
            border: groove;
            color: black;
            border-color: red;
            background-color:white;
        }
        body {
           background-image: url('Photos/bG.png');
           background-size: 120%;
           color: black ;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"  >
    <div >
         <div class="row" >
            <img src="Photos/logo2.png"  class="rowImage" />
        </div>
    <div class="row" >
        
        <div class="col-md-3"></div>
        <div class="p col-md-6" style="direction: rtl; text-align: justify;">
            <h2 style="direction: rtl; text-align: center; padding:2%;">מי אנחנו?</h2>
            <h6>ארגון אחד - עשרות דרכים לעזור</h6>
            <p>
                "עזר מציון" זוכת פרס ישראל לשנת תשס"ח, הינה העמותה הגדולה בישראל בתחום התמיכה הרפואית. מאז הקמתה בשנת 1979, מושיטה "עזר מציון" סיוע ותמיכה רפואיים לחולים ולמשפחותיהם, לקשישים, לנזקקים ולאנשים במצבי משבר רבים ושונים, במטרה לסייע להם להתגבר על הקשיים והמכשולים העומדים בפניהם.
                <br />
                המוטו של "עזר מציון" הינו הבחירה בחיים: הרצון האמיתי והמאמץ האדיר לתת לכל אדם באשר הוא, ויהיה מצבו קשה ככל שיהיה, את ההזדמנות לבחור בחיים.
                <br />
                "עזר מציון" מלווה את הנעזרים בכל שלבי ההתמודדות – עוטפת את החולים ומשפחותיהם בחום, באהבה ובמערך רחב של שירותים ייחודיים וחדשניים הניתנים בצורה מקצועית.
                <br />
                שירותי העמותה ניתנים באמצעות כ – 14 מחלקות ו – 30,000 מתנדבים ב- 58 מוקדי פעילות הפרושים על פני 31 ערים, בכל רחבי המדינה. מעל 720,000 איש מכל הרקעים, המגזרים והגילאים, מסתייעים בשירותי העמותה מדי שנה.
                <br />
                הודות לתחושת השותפות, לרצון הטוב ולהיכרות המעמיקה עם מצוקות החולים, הקשישים והמוגבלים, ממשיכה "עזר מציון" כל העת להתפתח, לאתר צרכים וליצור דרכים חדשניות שיסייעו להושיט יד לכל אדם, בכל זמן ובכל מקום.
            </p>
        </div>
        <div class="col-md-3"></div>
    </div>
    </div>
   
   
</asp:Content>
