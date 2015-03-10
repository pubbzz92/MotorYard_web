<%@ Page Title="Vehicle" Language="C#" MasterPageFile="~/sub.master" AutoEventWireup="true" CodeBehind="Vehicle.aspx.cs" Inherits="Motor_Yard.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="subhead" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 800px;
        }

        .auto-style11 {
            width: 244px;
        }
      
        .auto-style12 {
            height: 119px;
            width: 509px;
        }
      
        .auto-style13 {
            height: 40px;
        }
          .scrollit {
    overflow:scroll;
    height:400px;
    width:180px
}
      
        .auto-style14 {
            width: 192px;
            height: 50px;
        }
              
    .auto-style18 {
            width: 177px;
        }
      
        .auto-style19 {
            width: 509px
        }
      
        </style>

    <script>

        function radioMe(e) {
            if (!e) e = window.event;
            var sender = e.target || e.srcElement;

            if (sender.nodeName != 'INPUT') return;
            var checker = sender;
            var chkBox = document.getElementById('<%= CheckBoxList1.ClientID %>');
  var chks = chkBox.getElementsByTagName('INPUT');
  for (i = 0; i < chks.length; i++) {
      if (chks[i] != checker)
          chks[i].checked = false;
  }
}




    </script>













</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sub_place" runat="server">

    <table cellpadding="0" cellspacing="0" class="auto-style8" style="margin-bottom:20px;width:1100px; margin-top:10px;margin-left:25px; background-color:#1c1c1c">
        <tr>
           <td rowspan="4" style="vertical-align: top;" class="auto-style14"><table cellpadding="0" cellspacing="0" style="display:block;width: 199px; height:500px; background-color:rgba(242, 242, 242, 0.95); margin:0 0 0 0; border: 1px solid #dbd7d7; border-radius: 4px;" class="auto-style2">
                    <tr>
                            <td class="auto-style18" style="color:#; padding:5px 5px 5px 10px;" >SELECT AREA </td>
                    </tr>
                    <tr>
                        <td style="padding:2px;" class="auto-style18" >
                            <div class="scrollit">
                                
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" Style=" color:#;" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                                <asp:ListItem>Ampara</asp:ListItem>
                            <asp:ListItem>Anuradhapura</asp:ListItem>
                            <asp:ListItem>Badulla</asp:ListItem>
                            <asp:ListItem>Batticaloa</asp:ListItem>
                            <asp:ListItem>Colombo</asp:ListItem>
                            <asp:ListItem>Galle</asp:ListItem>
                            <asp:ListItem>Gampaha</asp:ListItem>
                            <asp:ListItem>Hambanthota</asp:ListItem>
                            <asp:ListItem>Jaffna</asp:ListItem>
                             <asp:ListItem>Kalutara</asp:ListItem>
                                <asp:ListItem>Kandy</asp:ListItem>
                                <asp:ListItem>Kegalle</asp:ListItem>
                                <asp:ListItem>Kilinochchi</asp:ListItem>
                                <asp:ListItem>Kurunegala</asp:ListItem>
                                <asp:ListItem>Mannar</asp:ListItem>
                                <asp:ListItem>Matale</asp:ListItem>
                                <asp:ListItem>Matara</asp:ListItem>
                                <asp:ListItem>Monaragala</asp:ListItem>
                                <asp:ListItem>Mullaitivu</asp:ListItem>
                                <asp:ListItem>Nuwaraeliya</asp:ListItem>
                                <asp:ListItem>Polonnaruwa</asp:ListItem>
                                <asp:ListItem>Puttalam</asp:ListItem>
                                <asp:ListItem>Rathnapura</asp:ListItem>
                                <asp:ListItem>Trincomalee</asp:ListItem>
                                <asp:ListItem>Vavuniya</asp:ListItem>
                            </asp:CheckBoxList>
                                        
                                </div>
                            </td>
                    </tr>

                    <tr>
                        <td style="padding:0 0;" class="auto-style18" ><asp:LinkButton ID="btn_area" runat="server" CssClass="gButton" Style="display:block;   height: 30px; width: 132px;float:right;display: block;margin: 1px 83px 4px 8px; " OnClick="btn_area_Click"  >Go</asp:LinkButton>
                            </td>
                    </tr>



                </table></td>

        </tr>
        <tr style="width:800px;">
            <td class="auto-style12" >
                <h2 style="color: #ffffff; font-weight: bold; margin: 0px 0px 36px 10px; border-bottom:1px solid #fafafa;">Motor Parts</h2>
                
            </td>
            
        </tr>
        <tr style="width:1000px;">
            <td class="auto-style19">
                <asp:Table runat="server" ID="t1" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px; 
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align:center ;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color: #;width: 242px; font-weight: bold;"><asp:Label ID="cat1" runat="server"></asp:Label>  </h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                      <asp:Panel ScrollBars="Auto" height="120px" ID="ph1" runat="server">
                                        
                                        </asp:Panel>  
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>



                <asp:Table runat="server" ID="t2" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px; 
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color: #;width: 242px; font-weight: bold;"><asp:Label ID="cat2" runat="server"></asp:Label>  </h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                      <asp:Panel ScrollBars="Auto" height="120px" ID="ph2" runat="server">
                                        
                                        </asp:Panel>  
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>


                <asp:Table runat="server" ID="t3" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color: #;width: 242px; font-weight: bold;"><asp:Label ID="cat3" runat="server"></asp:Label></h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                        <asp:Panel ScrollBars="Auto" height="120px" ID="ph3" runat="server">
                                        
                                        </asp:Panel>
                                     </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>



                <asp:Table runat="server" ID="t4" Visible="false" cellpadding="0" cellspacing="0" style="display:block; border: 1px solid #dbd7d7; margin: 10px 10px; float:left; border-radius:10px;-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);" class="auto-style11">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color: #;width: 242px; font-weight: bold;"><asp:Label ID="cat4" runat="server"></asp:Label></h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;" class="auto-style13">
                                        <asp:Panel ScrollBars="Auto" height="120px" ID="ph4" runat="server">
                                        
                                        </asp:Panel>
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>


                <asp:Table runat="server" ID="t5" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color: #;width: 242px; font-weight: bold;"><asp:Label ID="cat5" runat="server"></asp:Label> </h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                        <asp:Panel ScrollBars="Auto" height="120px" ID="ph5" runat="server">
                                        
                                        </asp:Panel>
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>


                <asp:Table runat="server" ID="t6" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color: #;width: 242px; font-weight: bold;"><asp:Label ID="cat6" runat="server"></asp:Label> </h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                       <asp:Panel ScrollBars="Auto" height="120px" ID="ph6" runat="server">
                                        
                                        </asp:Panel>
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>
                <asp:Table runat="server" ID="t7" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);
">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color:#;width: 242px; font-weight: bold;"><asp:Label ID="cat7" runat="server"></asp:Label> </h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;" class="auto-style13">
                                        <asp:Panel ScrollBars="Auto" height="120px" ID="ph7" runat="server">
                                        
                                        </asp:Panel>
                                     </asp:TableCell>
                                    
                                </asp:TableRow>




                            </asp:Table><asp:Table runat="server" ID="t8" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);
" Width="242px">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;text-align:center;">
                                        <h6 style="display: block;color:beige; margin: 5px 0; color:#;width: 242px; font-weight: bold;"><asp:Label ID="cat8" runat="server"></asp:Label> </h6>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;" class="auto-style13">
                                        <asp:Panel ScrollBars="Auto" height="120px" ID="ph8" runat="server">
                                        
                                        </asp:Panel>
                                     </asp:TableCell>
                                    
                                </asp:TableRow>




                            </asp:Table>


                

                          
                 

            </td>
        </tr>
        <tr style="width:800px;">

            <td class="auto-style19"> <h2 style="color:ButtonFace;margin-left:160px; width: 521px;">Didn't find what you were looking for?</h2>
                <asp:LinkButton runat="server" ID="btn_req" CssClass="myButton"  style="display: block;height: 40px;width: 180px;margin-left:305px; text-align:center; margin-top:10px; margin-right: 27px; margin-bottom: 8px;" PostBackUrl="~/Contactpage.aspx"> Make a request

                                                                         </asp:LinkButton>


            &nbsp;</td>
        </tr>
    </table>

</asp:Content>



