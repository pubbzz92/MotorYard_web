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
        }
      
        .auto-style13 {
            height: 40px;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sub_place" runat="server">

    <table cellpadding="0" cellspacing="0" class="auto-style8" style="margin-bottom:20px;width:800px;">
        <tr>
            <td class="auto-style12" >
                <h2 style="color: #857575; font-weight: normal; margin: 1px 0px 5px 10px;">Motor Parts</h2>
                <p style="display :block; text-align:justify; margin: 0px 0px 20px 10px; ">
                    We are pleased to launch our new website that will provide improved access to the products and services of the clients of Sri Lanka Motor Parts.  
On this web site you will find vehicle spareparts, about the Executive client of the association.&nbsp;
Also, we invite you to visit our client Directory to details about products and services supplied by them.
                    <br>
                    
                   
                </p>
            </td>
        </tr>
        <tr>
            <td >
                     <asp:Table runat="server" ID="t1" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);
">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color:#;width: 242px; font-weight: normal;"><asp:Label ID="cat1" runat="server"></asp:Label> </h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;" class="auto-style13">
                                        <asp:PlaceHolder ID="ph1" runat="server">
                                        
                                        </asp:PlaceHolder>
                                     </asp:TableCell>
                                    
                                </asp:TableRow>




                            </asp:Table>



                <asp:Table runat="server" ID="t2" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px; 
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color: #;width: 242px; font-weight: normal;"><asp:Label ID="cat2" runat="server"></asp:Label>  </h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                      <asp:PlaceHolder ID="ph2" runat="server">
                                        
                                        </asp:PlaceHolder>  
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>


                <asp:Table runat="server" ID="t3" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color: #;width: 242px; font-weight: normal;"><asp:Label ID="cat3" runat="server"></asp:Label></h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                        <asp:PlaceHolder ID="ph3" runat="server">
                                        
                                        </asp:PlaceHolder>
                                     </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>



                <asp:Table runat="server" ID="t4" Visible="false" cellpadding="0" cellspacing="0" style="display:block; border: 1px solid #dbd7d7; margin: 10px 10px; float:left; border-radius:10px;-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);" class="auto-style11">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color: #;width: 242px; font-weight: normal;"><asp:Label ID="cat4" runat="server"></asp:Label></h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;" class="auto-style13">
                                        <asp:PlaceHolder ID="ph4" runat="server">
                                        
                                        </asp:PlaceHolder>
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>


                <asp:Table runat="server" ID="t5" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color: #;width: 242px; font-weight: normal;"><asp:Label ID="cat5" runat="server"></asp:Label> </h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                        <asp:PlaceHolder ID="ph5" runat="server">
                                        
                                        </asp:PlaceHolder>
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>


                <asp:Table runat="server" ID="t6" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color: #;width: 242px; font-weight: normal;"><asp:Label ID="cat6" runat="server"></asp:Label> </h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;">
                                        <asp:PlaceHolder ID="ph6" runat="server">
                                        
                                        </asp:PlaceHolder>
                                    </asp:TableCell>
                                </asp:TableRow>




                            </asp:Table>
                <asp:Table runat="server" ID="t7" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);
">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color:#;width: 242px; font-weight: normal;"><asp:Label ID="cat7" runat="server"></asp:Label> </h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;" class="auto-style13">
                                        <asp:PlaceHolder ID="ph7" runat="server">
                                        
                                        </asp:PlaceHolder>
                                     </asp:TableCell>
                                    
                                </asp:TableRow>




                            </asp:Table><asp:Table runat="server" ID="t8" Visible="false" cellpadding="0" cellspacing="0" style="display:block; float:left; width: 242px; border: 1px solid #dbd7d7; margin: 10px 10px; border-radius:10px;
-webkit-box-shadow: 2px 2px 11px 0px rgba(50, 50, 50, 0.10);
-moz-box-shadow:    2px 2px 11px 0px rgba(50, 50, 50, 0.10);
box-shadow:         2px 2px 11px 0px rgba(50, 50, 50, 0.10);
">
                                <asp:TableRow style="text-align: center;width: 242px; border-radius:10px 10px 0 0; ">
                                    <asp:TableHeaderCell style="border-bottom: 1px solid #dbd7d7;">
                                        <h3 style="display: block; margin: 5px 0; color:#;width: 242px; font-weight: normal;"><asp:Label ID="cat8" runat="server"></asp:Label> </h3>
                                    </asp:TableHeaderCell>

                                </asp:TableRow>
                                <asp:TableRow height="120px">
                                    <asp:TableCell style="padding: 10px;" class="auto-style13">
                                        <asp:PlaceHolder ID="ph8" runat="server">
                                        
                                        </asp:PlaceHolder>
                                     </asp:TableCell>
                                    
                                </asp:TableRow>




                            </asp:Table>

                          
                 

            </td>
        </tr>
    </table>

</asp:Content>



