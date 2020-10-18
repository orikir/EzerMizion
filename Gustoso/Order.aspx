<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Gustoso.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" rel="stylesheet" type="text/css">
    <link href="custom.css" rel="stylesheet" type="text/css">

    <style> 
#output {
    background-color: papayawhip;
    color: #463c39;
    font-size: 17px;
    padding: 30px 30px;
    width: 40%;
    border: 2px solid #009688;
    font-family: sans-serif;
    line-height: 1.8;
}
#newPublish {
    background-color: papayawhip;
    color: #463c39;
    font-size: 17px;
    padding: 30px 30px;
    width: 40%;
    border: 2px solid #009688;
    font-family: sans-serif;
    line-height: 1.8;
}
.box {
    background-color: papayawhip;
    margin-top: 60px;
    margin-bottom: 50px;
    padding: 40px 60px;
}
#details_info {
    background-color: papayawhip;
    color: #463c39;
    font-size: 17px;
    padding: 30px 30px;
    width: 40%;
    border: 1px solid #cccccc;
    font-family: sans-serif;
    line-height: 1.8;
    margin-left: 90px;
}
.box3 {
    margin-top: 80px;
    margin-left: 150px;
    margin-right: 150px;
    margin-bottom: 60px;
    padding: 40px 50px;
    background-color: gainsboro;
}
.box11 {
    margin-top: 80px;
    margin-left: 250px;
    margin-right: 250px;
    margin-bottom: 60px;
    padding: 40px 50px;
    background-color: gainsboro;
    line-height: 2.5;
}
.web_design_box {
    margin-top: 30px;
    margin-left: 350px;
    margin-right: 350px;
    margin-bottom: 60px;
    padding: 40px 50px;
    background-color: papayawhip;
    box-shadow: 3px 5px 10px #318f86;
}
.hotel_reserve_box {
    margin-top: 30px;
    margin-left: 350px;
    margin-right: 350px;
    margin-bottom: 60px;
    padding: 40px 50px;
    background-color: papayawhip;
    box-shadow: 3px 5px 10px #7527b0;
}
.online_food_delivery_box {
    margin-top: 50px;
    margin-left: 350px;
    margin-right: 350px;
    margin-bottom: 60px;
    padding: 20px 40px;
    background-color: papayawhip;
    box-shadow: 3px 5px 10px #714c4a;
}
.result_box {
    margin-top: 15%;
    margin-left: 350px;
    margin-right: 350px;
    margin-bottom: 60px;
    padding: 20px 40px;
    background-color: gainsboro;
    box-shadow: 3px 5px 10px #8BC34A;
}
.result_box_text {
    color: #232222;
    font-size: 20px;
    text-align: center;
    padding-top:10px;
}
.result_box_text span {
    color: #614136;
    font-size: 26px;
    text-align: center;
}
    </style>
    <script>
        function finalCost() {
            var foodItem = document.getElementById("food_item").value;
            var specialItemm = document.getElementById("special_item").value;
            var foodQuatity = document.getElementById("food_quantity").value;
            var deliveryType = document.getElementById("delivery_type").value;
            var deliveryArea = document.getElementById("delivery_area").value;

            var all_food = (parseInt(foodItem) * 7) + (parseInt(specialItemm) * 3) + ((foodQuatity) * 2) + (parseInt(deliveryType) * 4) + (parseInt(deliveryArea) * 3)
            document.getElementById("result").innerHTML = all_food;
        }
        function ok_result() {
            document.getElementById("okResult").style.display = "block";
            document.getElementById("okResult").style.backgroundColor = "#DCE775";
            document.getElementById("input_box").style.display = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="online_food_delivery_box animated bounceInDown" id="input_box">
          <h3> Online Food Delivery Form </h3><br>
          <form>
              <div class="form-group">
                  <select class="form-control" id="food_item" onchange="finalCost()">
                      <option value="0"> בחר מנה... </option>
                      <option value="1"> פיצה מרגריטה </option>
                      <option value="2"> פסטה ברוטב שמנת </option>
                      <option value="3">  פסטה ברוטב עגבניות </option>
                      <option value="4"> סלט קצוץ </option>
                      <option value="5"> סלט כפרי  </option>
                     
                  </select>
              </div>
              <div class="form-group">
                  <select class="form-control" id="special_item" onchange="finalCost()">
                      <option value="0"> Want Special Item ?</option>
                      <option value="2"> Yes </option>
                      <option value="0"> No </option>
                  </select>
              </div>
              <div class="form-group">
                  <input type="number" class="form-control" id="food_quantity" placeholder="Quantity" onkeyup="finalCost()" >
              </div>
              <div class="form-group">
                  <select class="form-control" id="delivery_type" onchange="finalCost()">
                      <option value="0"> Delivery Type - </option>
                      <option value="0"> Normal </option>
                      <option value="2"> Emergency </option>
                  </select>
              </div>
              <div class="form-group">
                  <select class="form-control" id="delivery_area" onchange="finalCost()">
                      <option value="0"> Select Delivery Area ... </option>
                      <option value="1"> תל אביב </option>
                      <option value="2"> ירושלים </option>
                      <option value="3"> פתח תקווה  </option>
                      <option value="4"> גבעת שמואל </option>
                      <option value="5"> מודיעין  </option>
      
                  </select>
              </div><br>
              <div class="form-group">
                  <label>Total Cost (ILS) : </label>
                  <span id="result" style="background-color: #8c7269;color: #fff;padding: 6px 70px;font-weight: 600;font-size: 18px; margin-left: 10px;border-radius: 5px;">0</span>
                  
        <input type="button" value="SUBMIT" class="btn btn-primary" style="float: right" id="ok" onclick="ok_result()">
              </div>
          </form>
      </div>

      <div class="result_box animated zoomIn" style="display: none;" id="okResult">
          <h3 class="result_box_text" id="ok_text"> הזמנתך התקבלה. ניצור איתך קשר בהקדם.<br><br><span> תודה! </span></h3><br>
      </div>
</asp:Content>
