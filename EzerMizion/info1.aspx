<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="info1.aspx.cs" Inherits="EzerMizion.info1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .rowImage {
            padding: 1% 0% 1% 0%;
            width: 100%;
            height: 100%;
        }

        .header {
            margin: 1% 0% 1% 0%;
            direction: rtl;
            position: center;
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: large;
            color: white;
        }

        .photoD {
            margin: 5% 0% 0% 0%;
            padding: 2% 0% 2% 0%;
            width: 45%;
            height: 45%;
        }
        body {
           background-image: url('Photos/bG.png');
           background-size: 120%;
           color: black ;
        }

        .p {
            border:dotted;
            color: black;
            border-color: red;
            background-color:white
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ">
        <div class="row">
            <img src="Photos/saveLife.jpg" class="rowImage" />
        </div>
        <div class="p col-md-3"></div>
        <div class="p col-md-6" style="direction: rtl; text-align: justify;">
            <h2 style="direction: rtl; text-align: center; padding:3%;">המאגר והישגיו</h2>
            <h6>המאגר צבר במהלך השנים הישגים רבים ומשמעותיים:</h6>
            <p>
                המאגר הלאומי של "עזר מציון" הינו המאגר השישי בגודלו בעולם והנו המאגר היהודי הגדול ביותר. מאז הקמתו בשנת 1998 הצטרפו אליו למעלה מ-1,054,739 תורמים פוטנציאליים.
        <br />
                המאגר חבר בארגון העולמי של מאגרי מח העצם BMDW ׁׁ(פרוט: Bone Marrow World Wide) ובנה לעצמו מוניטין של מאגר איכותי ויעיל, המספק מענה מהיר לכל פונה.
        <br />
                המאגר פועל בכפוף לסטנדרטים בינלאומיים של  ארגון WMDA (פרוט: World Marrow Donor Association) הקובע נהלים למאגרי מח העצם בעולם. מאגר "עזר מציון" מחזיק בתעודת ההסמכה (אקרדיטציה) היוקרתית של הארגון החל משנת 2011.
        <br />
                בכל שנה מקבל המאגר אלפי בקשות חיפוש  לאיתור תורם לחולים ממרכזי השתלות ברחבי העולם. עד היום בוצעו בזכות המאגר למעלה מ - 3,833 השתלות מצילות חיים לחולים בישראל ובמדינות רבות נוספות בעולם.
        <br />
                אחוז ההיענות וזמינות התורמים במאגר גבוה ביותר ועומד על 94% בשלבים המתקדמים של התהליך.
        <br />
                בקיץ 2005 נחתם הסכם פורץ דרך עם צה"ל וכל מתגייס יכול להצטרף למאגר בשרשרת החיול בבקו"ם. מדובר בקבוצת תורמים בעלת פוטנציאל אידיאלי, שכן מדובר באנשים צעירים ובריאים, שעברו סינון בריאותי ושיוכלו להישאר במאגר ולשמש תורמים פוטנציאליים במשך שנים רבות.
        <br />
                מאגר "עזר מציון" מקושר למרבית מאגרי מח העצם האחרים בעולם באמצעות ממשק תקשורת מתקדם המאפשר זמינות ומענה מיידי לכל חולה בעולם (EMDIS).
            </p>
        </div>
        <div class=" p col-md-3"></div>
    </div>
    <div class="row header " runat="server">
        <div class="col-3"></div>
        <div class="col-2 ">
            <img src="Photos/header_helping_hand.png" class="photoD" />
            <div class="subTitle">
                <div class="title">
                    <asp:Label ID="Label6" runat="server" Text="180 ₪"></asp:Label></div>
                <div class="subTitle ">
                    <asp:Label ID="Label2" runat="server" class="subTitle" Text="עלות בדיקת דגימה"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col-2">
            <img src="Photos/header_medal1.png" class="photoD" />
            <div class="titles">
                <div class="title">
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                </div>
                <div class="subTitle backoffice">
                    <asp:Label ID="Label1" runat="server" class="subTitle" Text="השתלות שבוצעו עד היום"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col-2">
            <img src="Photos/header_people.png" class="photoD" />
            <div class="titles">
                <div class="title">
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                </div>
                <div class="subTitle backoffice">
                    <asp:Label ID="Label3" runat="server" class="subTitle" Text="תורמים פוטנציאליים במאגר"></asp:Label>
                </div>
            </div>
        </div>
        <div class="col-3"></div>
    </div>

</asp:Content>
