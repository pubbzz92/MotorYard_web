<%@ Page Title="Motoryard | Notifications" Language="C#" MasterPageFile="~/Profile/Profile_Sub.Master" AutoEventWireup="true" CodeBehind="notification.aspx.cs" Inherits="Motor_Yard.Profile.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headProfile" runat="server">
    <style type="text/css">
        
        .auto-style6 {
            width: 690px;
        }

        .auto-style7 {
            width: 710px;
        }
        .scrollit
        {
    overflow:scroll;
    height:400px;
    width:300px
        }

        .auto-style8 {
            width: 710px;
            height: 357px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyProfile" runat="server">


    <table cellpadding="0" cellspacing="0" class="auto-style1" style="display: block; margin: 2px 0 2px 0;">
        <tr>
            <td rowspan="2" style="background-color: #c5d8ff; width: 290px; border-right: 1px solid #d6d5fa;">
                <div class="scrollit">

             <%--   <asp:PlaceHolder ID="notifications" runat="server">--%>
  
                
                    <asp:LinkButton runat="server" ID="LinkButton1" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not1" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton2" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not2" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton3" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not3" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton4" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not4" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton5" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not5" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton6" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not6" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton7" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not7" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton8" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not8" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton9" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not9" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton10" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not10" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton11" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not11" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton12" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not12" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton13" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not13" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton14" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not14" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton15" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not15" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton16" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not16" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton17" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not17" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton18" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not18" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton19" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not19" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton20" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not20" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton21" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not21" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton22" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not22" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton23" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not23" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton24" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not24" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton25" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not25" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton26" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not26" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton27" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not27" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton28" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not28" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton29" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not29" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton30" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not30" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton31" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not31" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton32" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not32" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton33" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not33" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton34" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not34" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton35" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not35" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton36" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not36" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton37" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not37" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton38" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not38" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton39" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not39" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton40" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not40" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton41" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not41" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton42" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not42" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton43" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not43" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton44" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not44" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton45" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not45" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton46" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not46" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton47" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not47" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton48" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not48" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton49" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not49" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="LinkButton50" OnClick="table1_Click" Font-Underline="false" >
                        <asp:PlaceHolder ID="not50" runat="server" ></asp:PlaceHolder>
                       </asp:LinkButton>
                    
                <%--<table cellpadding="0" cellspacing="0" class="auto-style5 notificationList" style="display: block; margin: 10px 10px 10px 10px; width: 270px;">
                    <tr>
                        <td style="font-size: 13px; padding: 5px 5px 5px 5px; color: #2231d4"><b>dulamadushani91@gmail.com </b></td>
                    </tr>
                    <tr>
                        <td style="font-size: 12px; padding: 0px 5px 0px 5px;">Your enquiry.....</td>
                    </tr>
                    <tr>
                        <td style="font-size: 10px; padding: 5px 5px 5px 5px; color: #000; font-weight: bold;">2014-09-25 06:55:AM</td>
                    </tr>
                </table>
                <table cellpadding="0" cellspacing="0" class="auto-style5 notificationList" style="display: block; margin: 10px 10px 10px 10px; width: 270px;">
                    <tr>
                        <td style="font-size: 13px; padding: 5px 5px 5px 5px; color: #2231d4"><b>dulamadushani91@gmail.com </b></td>
                    </tr>
                    <tr>
                        <td style="font-size: 12px; padding: 0px 5px 0px 5px;">Your enquiry.....</td>
                    </tr>
                    <tr>
                        <td style="font-size: 10px; padding: 5px 5px 5px 5px; color: #000; font-weight: bold;">2014-09-25 06:55:AM</td>
                    </tr>
                </table>
                <table cellpadding="0" cellspacing="0" class="auto-style5 notificationList" style="display: block; margin: 10px 10px 10px 10px; width: 270px;">
                    <tr>
                        <td style="font-size: 13px; padding: 5px 5px 5px 5px; color: #2231d4"><b>dulamadushani91@gmail.com </b></td>
                    </tr>
                    <tr>
                        <td style="font-size: 12px; padding: 0px 5px 0px 5px;">Your enquiry.....</td>
                    </tr>
                    <tr>
                        <td style="font-size: 10px; padding: 5px 5px 5px 5px; color: #000; font-weight: bold;">2014-09-25 06:55:AM</td>
                    </tr>
                </table>
                <table cellpadding="0" cellspacing="0" class="auto-style5 notificationList" style="display: block; margin: 10px 10px 10px 10px; width: 270px;">
                    <tr>
                        <td style="font-size: 13px; padding: 5px 5px 5px 5px; color: #2231d4"><b>dulamadushani91@gmail.com </b></td>
                    </tr>
                    <tr>
                        <td style="font-size: 12px; padding: 0px 5px 0px 5px;">Your enquiry.....</td>
                    </tr>
                    <tr>
                        <td style="font-size: 10px; padding: 5px 5px 5px 5px; color: #000; font-weight: bold;">2014-09-25 06:55:AM</td>
                    </tr>
                </table>
                <table cellpadding="0" cellspacing="0" class="auto-style5 notificationList" style="display: block; margin: 10px 10px 10px 10px; width: 270px;">
                    <tr>
                        <td style="font-size: 13px; padding: 5px 5px 5px 5px; color: #2231d4"><b>dulamadushani91@gmail.com </b></td>
                    </tr>
                    <tr>
                        <td style="font-size: 12px; padding: 0px 5px 0px 5px;">Your enquiry.....</td>
                    </tr>
                    <tr>
                        <td style="font-size: 10px; padding: 5px 5px 5px 5px; color: #000; font-weight: bold;">2014-09-25 06:55:AM</td>
                    </tr>
                </table>
                <table cellpadding="0" cellspacing="0" class="auto-style5 notificationList" style="display: block; margin: 10px 10px 10px 10px; width: 270px;">
                    <tr>
                        <td style="font-size: 13px; padding: 5px 5px 5px 5px; color: #2231d4"><b>dulamadushani91@gmail.com </b></td>
                    </tr>
                    <tr>
                        <td style="font-size: 12px; padding: 0px 5px 0px 5px;">Your enquiry.....</td>
                    </tr>
                    <tr>
                        <td style="font-size: 10px; padding: 5px 5px 5px 5px; color: #000; font-weight: bold;">2014-09-25 06:55:AM</td>
                    </tr>
                </table>--%>

                    <%--</asp:PlaceHolder>--%>

            </div>
            </td>
            <td style="vertical-align: top;background-color:#1c1c1c" width="966px"; class="auto-style8;">
                <table cellpadding="0" cellspacing="0" class="auto-style6" style="display: block; margin: 0 0px 5px 10px; width: 718px; height: 53px;">
                    <tr>
                        <<%--td rowspan="2" style="width: 50px;">
                            <img src="../images/pr.jpg" style="width: 50px; height: 50px; padding-bottom: 2px" /><td>--%>
                        <td style="font-size: 25px; padding: 0 0 0 5px; vertical-align: top; font: bold;color:beige"><asp:Label runat="server" ID="Email"></asp:Label> <%-- mortoryard@gmail.com--%></td>
                    </tr>
                    <tr>

                        <td style="font-size: 20px; vertical-align: top; display: block; padding: 0 0 2px 5px;color:beige;margin-left:50px;"><asp:PlaceHolder ID="message" runat="server"></asp:PlaceHolder> </td>
                    </tr>
                </table>
            </td>
        </tr>
        
        <%--end of side bar  
            
              start the display div  --%> 

        
       
        <tr>

            <td style="vertical-align: bottom;">
                <table cellpadding="0" cellspacing="0" class="auto-style7" style="background: rgba(196, 211, 245, 0.30); border-radius: 0 10px 10px 0; border-top: 1px solid #d6d5fa;">
                    <tr>
                        <%--<td style="padding: 5px 0 2px 10px; width: 500px; height: 45px;">Reply:</td>
                        <td style="float: right; padding: 8px 0 2px 10px;">
                            <asp:LinkButton ID="submit" runat="server" CssClass="loginbtn" Style="height: 10px; width: 60px; margin: 0 0" OnClick="submit_Click">Send</asp:LinkButton>&nbsp;&nbsp;
                            <asp:LinkButton ID="cancel" runat="server" CssClass="loginbtn" Style="height: 10px; width: 60px; margin: 2px 9px 2px 2px;">Clear</asp:LinkButton>

                        </td>--%>
                    </tr>
                    <%--<tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 668px; height: 100px; margin: 0 11px 7px 10px; padding: 10px 10px; font-family: 'Raleway', sans-serif; border-radius: 4px; resize: none; outline: none" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>--%>
                </table>
            </td>
        </tr>
    </table>


</asp:Content>
