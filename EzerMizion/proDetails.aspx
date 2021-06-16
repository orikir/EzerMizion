
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="proDetails.aspx.cs" Inherits="EzerMizion.proDetails" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
  <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="container">
        <h2>Modal Example</h2>


        <script type="text/javascript">
            $(window).on(function () {
                $('#myModal').modal('show');
            });
        </script>

        <!-- Button to Open the Modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
            Open modal
        </button>
     <asp:Button ID="d" runat="server" type="button" class="btn btn-primary" data-toggle="modal" CommandName='<%# Eval("proCode")%>' OnClick="d_Click"  data-target="#myModal" Text="תיאור מוצר" />
                            
        <!-- The Modal -->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Modal Heading</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>

    </div>
</asp:Content>

        <span aria-hidden="true">×
							</span>
                    </button>
                </div>

                <div class="modal-body">

                    <!-- Data passed is displayed
							in this part of the
							modal body -->
                    <h6 id="modal_body"></h6>
                    <button type="button"
                        class="btn btn-success btn-sm"
                        data-toggle="modal"
                        data-target="#exampleModal"
                        id="submit">
                        Submit
					
                    </button>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">

        $(".clickMe").click(function () {
            var name = $(this).attr("rel");


            var marks = $("#marks").val();
            var str = "You Have Entered "
                + "Name: " + name
                + " and Marks: " + marks;
            $("#modal_body").html(str);
        });
    </script>

</asp:Content>
