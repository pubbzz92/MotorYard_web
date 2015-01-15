<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Contactpage.aspx.cs" Inherits="Motor_Yard.Contactpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 800px;
        }
        .auto-style4 {
            width: 700px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table cellpadding="0" cellspacing="0" class="auto-style1" style="width:1000px;">
        <tr>
            <td  style="width:300px;">
                <img src="Images/contactus.jpg" style="width: 300px;" />
    
</td>
            <td style="font-size:16px; vertical-align:top;display:block;padding:33px 0 10px 6px;" class="auto-style4">
                Put your contact information here. You can edit this in the admin site.<br /><br />
                <span style="font-size:22px;"> Contact Us</span>



                <table cellpadding="0" cellspacing="0" class="auto-style3" style="width:700px; display:block;margin:15px 0 5px 0;border-top:1px solid #0094ff;">
                    <tr>
                        <td style="width:200px;display:block; text-align:right;vertical-align:top;margin:10px 0 10px 0;">Your name*</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" style=" Width:260px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:10px 0 10px 10px;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        
                        <td style="display:block;text-align:right;vertical-align:top;margin:0 0 10px 0;">Your email*</td>
                        <td> <asp:TextBox ID="TextBox2" runat="server"  style="Width:260px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:0 0 10px 10px;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right;vertical-align:top;">Enquiry*</td>
                        <td><asp:TextBox ID="TextBox3" runat="server" style=" Width:260px; Height:100px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:0 0 0 10px;" TextMode="MultiLine"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td><asp:LinkButton ID="LinkButton2" runat="server" CssClass="loginbtn" Style="height: 10px; width: 60px;margin:10px 0 0 200px; ">Submit</asp:LinkButton></td>
                    </tr>
                </table>



            </td>
            
        </tr>
        
    </table>



</asp:Content>
