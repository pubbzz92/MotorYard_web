<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/Adssub.master" AutoEventWireup="true" CodeBehind="edit_ads.aspx.cs" Inherits="Motor_Yard.Profile.edit_ads" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyProfile" runat="server">
     <table cellpadding="0" cellspacing="0" style="width: 701px;margin: 8px 0 20px 7px;   ">
        <tr>
            <td style="width:110px; padding: 0 2px 2px 2px; vertical-align:top">Title</td>
            <td><asp:TextBox ID="TextBox1" runat="server" style="width: 580px;height: 23px; margin: 0px 0px 10px 0px; border-radius:3px;padding: 2px 2px 2px 2px;border-color:#dcd9d9;" TextMode="MultiLine" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width:110px; padding: 0 2px 2px 2px;vertical-align:top">Description</td>
            <td><asp:TextBox ID="TextBox2" runat="server" style="width: 580px;height: 70px; margin: 0px 0px 10px 0px; border-radius:3px;padding: 2px 2px 2px 2px;border-color:#dcd9d9" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            
            <td style="width:110px; padding: 0 2px 2px 2px; display:block;margin-bottom:10px;vertical-align:top">Upload Ads Img</td>
            <td><asp:FileUpload ID="FileUpload1" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: left;  margin: 0px 0px 10px 0px; "  /></td>
        </tr>
        <tr>
            <td style="width:110px; padding: 0 2px 2px 2px;display:block;margin-bottom:10px;vertical-align:top">Discount </td>
            
            <td><asp:TextBox ID="TextBox3" runat="server" style="width: 580px;height: 23px; margin: 0px 0px 10px 0px; border-radius:3px;padding: 2px 2px 2px 2px;border-color:#dcd9d9;" TextMode="MultiLine" ></asp:TextBox></td>
            
        </tr> 
        <tr>
            <td style="width:110px; padding: 0 2px 2px 2px; display:block;margin-bottom:10px;vertical-align:top">Image Link</td>
            <td><asp:TextBox ID="TextBox4" runat="server" style="width: 580px;height: 23px; border-radius:3px;padding: 2px 2px 2px 2px; margin: 0px 0px 10px 0px;border-color:#dcd9d9;" TextMode="MultiLine" ></asp:TextBox></td>
        </tr>
        <tr>
           
            <td colspan="2"><asp:CheckBox ID="CheckBox1" runat="server" style="width: 500px;height: 23px; margin: 0 0 10px 0; border-radius:2px;padding: 0px 2px 2px 110px;border-color:#dcd9d9;"/>Published</td>
        </tr>
    </table>
    
    
</asp:Content>
