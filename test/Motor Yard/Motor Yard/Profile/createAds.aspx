<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/Profile_Sub.Master" AutoEventWireup="true" CodeBehind="createAds.aspx.cs" Inherits="Motor_Yard.Profile.createAds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="BodyProfile" runat="server">

    <table cellpadding="0" cellspacing="0" style="width: 966px;margin: 11px 0px 0px 108px; height: 409px; background-color:#1c1c1c;">
        <tr>
            <td style="padding: 0 2px 2px 2px; vertical-align:center;color:beige;" class="auto-style5">&nbsp;&nbsp; Title</td>
            <td><asp:TextBox ID="TextBox1" runat="server" style="width: 580px;height: 23px; margin: 14px 0px 10px 0px; border-radius:3px;padding: 2px 2px 2px 2px;border-color:#dcd9d9;" TextMode="MultiLine" ></asp:TextBox></td>
        </tr>
        <tr>
            <td style="padding: 0 2px 2px 2px;color:beige;vertical-align:center" class="auto-style5">&nbsp;&nbsp; Description</td>
            <td><asp:TextBox ID="TextBox2" runat="server" style="width: 580px;height: 70px; margin: 0px 0px 10px 0px; border-radius:3px;padding: 2px 2px 2px 2px;border-color:#dcd9d9" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
         <tr>
            
            <td style="padding: 0 2px 2px 2px; display:block;color:beige;margin-bottom:10px;vertical-align:center" class="auto-style5">&nbsp;&nbsp; Upload Ads Img</td>
            <td><asp:FileUpload ID="FileUpload1" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: left;  margin: 0px 0px 10px 0px;color:beige; "  /></td>
        </tr>
        <tr>
            <td style="padding: 0 2px 2px 2px;display:block;color:beige;margin-bottom:10px;vertical-align:top" class="auto-style5">&nbsp;&nbsp; Discount </td>
            
            <td><asp:TextBox ID="TextBox3" runat="server" style="width: 580px;height: 23px; margin: 0px 0px 10px 0px; border-radius:3px;padding: 2px 2px 2px 2px;border-color:#dcd9d9;" TextMode="MultiLine" ></asp:TextBox></td>
            
        </tr> 
        <tr>
            <td style="padding: 0 2px 2px 2px; display:block;color:beige;margin-bottom:10px;vertical-align:center" class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
           
            <td colspan="2" style="color:beige;">
        <asp:LinkButton ID="LinkButton2" runat="server" Style="  margin-right:130px; float:left;border-radius:5px;padding-left:5px; padding-left:20px;  border: 3px solid #d5cdcd; margin-left:30px"   Height="27px" Width="85px" BackColor="#95D395" ForeColor="Black" BorderStyle="Solid" PostBackUrl="/Home.aspx"><b>Submit</b></asp:LinkButton></td>
        </tr>
    </table>
    

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="headProfile">
    <style type="text/css">
        .auto-style5 {
            width: 143px;
        }
    </style>
</asp:Content>

