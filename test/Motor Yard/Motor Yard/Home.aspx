<%@ Page Title="Motor Yard | Home" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Motor_Yard.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 608px;
        }
        .auto-style6 {
            width: 392px;
        }
    </style>
<%--    <script src="scripts/modernizr-2.6.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    <script src="scripts/lean-slider.js"></script>
    <link href="style/style.css" rel="stylesheet" />
    <link href="style/sample-styles.css" rel="stylesheet" />
    <link href="style/lean-slider.css" rel="stylesheet" />--%>

     <script src="scripts/modernizr-2.6.1.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    <script src="scripts/lean-slider.js"></script>
    <link href="style/style.css" rel="stylesheet" />
    <link href="style/sample-styles.css" rel="stylesheet" />
    <link href="style/lean-slider.css" rel="stylesheet" />
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table cellpadding="0" cellspacing="0" class="auto-style1" style="display: block; margin: 15px 0 10px 0;float:left;">
       <%--<tr><td style="width:678px;">
           <asp:TextBox ID="TextBox1" runat="server" Style="width:670px; padding: 4px 1px 2px 5px;display: block;margin: 0 0 7px 0;border-radius: 3px;font-size: 16px;border: 1px solid #ccc;height: 25px;" placeholder="I am Looking For...."></asp:TextBox>
           
           </td>
           
           <td style=" display:block;float:left;margin-left:5px;  width:200px; " class="auto-style6"><asp:DropDownList ID="DropDownList1" runat="server" style="height: 33px;width: 200px;border-radius: 3px; border: 1px solid #ccc;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
               <asp:ListItem>-- Select Brand --</asp:ListItem>
               </asp:DropDownList>
           </td>
           <td style="float:right;"><asp:LinkButton ID="LinkButton1" runat="server" CssClass="gButton" Style="width: 60px;height: 19px; display:block; margin: 0 0 0 5px; float: right;"  >Search</asp:LinkButton></td>
       </tr> --%>
         
         <tr>


<%--            <td colspan="2" style="height: 215px;">


                <div class="slider-wrapper">
                    <div id="slider">
                        <div class="slide1">
                            <img src="images/1.jpg" alt="" style="width: 1000px; height: 216px;" />
                        </div>
                        
                    </div>
                    <div id="slider-direction-nav"></div>
                    <div id="slider-control-nav"></div>
                </div>

                <script type="text/javascript">
                    $(document).ready(function () {
                        var slider = $('#slider').leanSlider({
                            directionNav: '#slider-direction-nav',
                            controlNav: '#slider-control-nav'
                        });
                    });
                </script>









            </td>--%>
                          
              <td colspan="2" style="height: 215px; padding-right:15px;padding-left:2px;">
                

                  <div id="myCarousel" class="carousel slide">
   <!-- Carousel indicators -->
   <ol class="carousel-indicators" >
  
      <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
      
   </ol>   

   <!-- Carousel items -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="images/1.jpg" alt="First slide"/>
      </div>
      <div class="item">
         <img src="images/2.jpg" alt="Second slide"/>
      </div>
      <div class="item">
         <img src="images/3.jpg" alt="Third slide"/>
      </div>
        <div class="item">
         <img src="images/4.jpg" alt="Third slide"/>
      </div>
   </div>
   <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
</div> 
                  <script>
                      !function ($) {
                          $(function () {
                              // carousel demo
                              $('#myCarousel').carousel()
                          })
                      }(window.jQuery)
</script>


             </td>
           

            <td class="auto-style3" style=" display:block; vertical-align:top;padding-bottom:10px;">
                <table class="auto-style2" style="display:block;width:200px;height: 250px; background-color:#C5D8FF; margin:0 5px 0 0; border: 1px solid #dbd7d7; border-radius: 4px" >
                    <tr >
                        <td class="auto-style4" style=" padding:6px 0px 6px 15px;margin-top:50px;"><b>SELECT YOUR VEHICLE</b></td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><asp:DropDownList ID="drop_brand" AppendDataBoundItems="True" runat="server" style="padding:2px 0 2px 2px; color:#000; margin:3px 0 0 6px;border-radius: 3px;background-color:#f6f1f1" DataTextField="brand_name" DataValueField="brand_name" Width="180px" OnTextChanged="drop_brand_SelectedTextChanged"  AutoPostBack="True">
                            <asp:ListItem Text="Select Brand" Value="Default value" />
                                                        </asp:DropDownList>
                        </td></tr>
            
                    <tr>
                        <td class="auto-style4"><asp:DropDownList ID="drop_model" AppendDataBoundItems="true" runat="server" style="width:180px; padding:2px 0 2px 2px;color:#000;margin:2px 0 0 6px;border-radius: 3px;background-color:#f6f1f1" DataTextField="model_name" DataValueField="model_name" OnTextChanged="drop_model_SelectedTextChanged" AutoPostBack="True">
                 <asp:ListItem Text="Select Model" Value="Default value" />
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><asp:DropDownList ID="drop_fuel" AppendDataBoundItems="True" runat="server" style="width:180px; padding:2px 0 2px 2px;margin:2px 0 0 6px;border-radius: 3px;background-color:#f6f1f1" DataTextField="fule_type" DataValueField="fule_type" OnTextChanged="drop_fuel_SelectedTextChanged" AutoPostBack="True">
                           <asp:ListItem Text="Select Fuel Type" Value="Default value" />
                             </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"><asp:DropDownList ID="drop_engine" AppendDataBoundItems="true" runat="server" style="width:180px; padding:2px 0 2px 2px;margin:2px 0 0 6px;border-radius: 3px;background-color:#f6f1f1" DataTextField="engine_capacity" DataValueField="engine_capacity" OnTextChanged="drop_engine_SelectedTextChanged" AutoPostBack="True">
                            <asp:ListItem Text="Select Engine Capacity" Value="Default value" />
                             </asp:DropDownList>
                        </td>
                    </tr>
                            
                    <tr>
                        <td class="auto-style4"><asp:DropDownList ID="drop_year" AppendDataBoundItems="True" runat="server" style="width:180px; padding:2px 0 2px 2px;margin:2px 0 0 6px;border-radius: 3px;background-color:#f6f1f1" DataTextField="year" DataValueField="year" OnTextChanged="drop_year_SelectedTextChanged" AutoPostBack="True">
                             <asp:ListItem Text="Select Make Year" Value="Default value" />
                             </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
              
                    <tr>
                        <td ><asp:LinkButton ID="button_go" runat="server" CssClass="myButton"  style="display: block;height: 30px;width: 180px;margin: 0 0px 8px 6px; text-align:center; margin-top:10px;" PostBackUrl="" OnClick="button_go_Click" >Go</asp:LinkButton></td>
                    </tr>
                    </table>
                    </td>


        </tr>
    </table>
    <table style="width: 1002px; float: left; margin: 5px 0 0 0;margin-left:70px;background-color:#c5d8ff;margin-bottom:20px">
        <tr>
            <td style="background-color: #302e2e; color: #f5e8e8; padding: 8px 0 8px 8px; border: 1px solid #dbd7d7; border-radius: 4px; font-size: 20px"><b>Featured Items</b></td>

        </tr>
        <tr>
            <td style="display: block; padding: 10px 3px 0 3px">
                <table style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px"></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>


                <table cellpadding="0" cellspacing="0" style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px"></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>

                <table cellpadding="0" cellspacing="0" style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px"></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>

                <table cellpadding="0" cellspacing="0" style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px"></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>


                <table cellpadding="0" cellspacing="0" style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px"></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>



                <table cellpadding="0" cellspacing="0" style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px"></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>


                <table cellpadding="0" cellspacing="0" style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px" /></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>

                <table cellpadding="0" cellspacing="0" style="display: block; float: left; width: 236px; border: 1px solid #dbd7d7; margin: 5px 5px 5px 5px; border-radius: 5px; -webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); -moz-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10); box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                    <tr>
                        <td style="width: 235px; color: #131871; padding: 15px 10px 2px 10px; font-size: 18px">Hengst Fuel Filter</td>
                    </tr>
                    <tr>
                        <td style="color: #716b6b; padding: 2px 10px 6px 10px;">Part No : 1000582415</td>
                    </tr>
                    <tr>
                        <td>
                            <img src="images/filter.jpg" style="width: 100px; height: 80px; display: block; margin: auto; padding-bottom: 7px"></td>
                    </tr>
                    <tr style="background-color: rgba(228, 228, 228, 0.3);">
                        <td style="color: #ea2020; font-size: 20px; padding: 5px 10px 15px 10px">25% OFF</td>
                    </tr>


                </table>
            </td>
        </tr>
    </table>

    <asp:SqlDataSource ID="SqlDataSource_Brand" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [BrandID], [Brand_name] FROM [Myard_Brand] WHERE ([Active] = @Active) ORDER BY [Rank], [Brand_ID]">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="Active" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
