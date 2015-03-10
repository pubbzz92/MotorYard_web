<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Contactpage.aspx.cs" Inherits="Motor_Yard.Contactpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 800px;
        }
        .auto-style4 {
            width: 700px;
            }
        .auto-style5 {
            width: 306px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table cellpadding="0" cellspacing="0" class="auto-style1" style="width:1000px; margin-left:90px;">
        <tr>
            <td class="auto-style5" style="background-color:#1c1c1c">
           
                <img src="Images/contactus.jpg" style="width: 300px; padding-top:10px;padding-bottom:10px;padding-right:5px;padding-left:5px;" />

</td>
            <td style="font-size:16px; vertical-align:top;display:block;padding:33px 0 10px 6px;background-color:#1c1c1c;" class="auto-style4">
               <span style="color:beige">Request the vehicle part from the spare part dealers of your area. <br /><br /></span>
                <span style="font-size:22px;color:beige;"> Send a Message.</span>



                <table cellpadding="0" cellspacing="0" class="auto-style3" style="width:690px; display:block;margin:15px 0 5px 0;border-top:1px solid #0094ff;background-color:#1c1c1c;">
                    <tr>
                        <td style="width:200px;display:block; text-align:right;vertical-align:top;margin:10px 0 10px 0;color:beige;">Your name*</td>
                        <td><asp:TextBox ID="txtName" runat="server" style=" Width:260px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:10px 0 10px 10px;"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="This field can not be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        
                        <td style="display:block;text-align:right;vertical-align:top;margin:0 0 10px 0;color:beige">Your email*</td>
                        <td> <asp:TextBox ID="txtEmail" runat="server"  style="Width:260px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:0 0 10px 10px;"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="This field can not be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    
                    </tr>
                     <tr>
                        
                        <td style="display:block;text-align:right;vertical-align:top;margin:0 0 10px 0;color:beige;">Contact Number*</td>
                        <td> <asp:TextBox ID="txtContact" runat="server"  style="Width:260px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:0 0 10px 10px;"></asp:TextBox>&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContact" Display="Dynamic" ErrorMessage="This field can not be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator></td>
                   
                          </tr>
                    <tr>
                        <td style="text-align:right;vertical-align:top;color:beige">Area*</td>
                        <td><asp:DropDownList ID="drpArea" runat="server"  style="Width:260px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:0 0 10px 10px;">
                            <asp:ListItem></asp:ListItem>
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
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drpArea" Display="Dynamic" ErrorMessage="This field can not be empty" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                       </td>
                        
                        </tr>
                    <tr>
                        
                        <td style="display:block;text-align:right;vertical-align:top;margin:0 0 10px 0;color:beige;">Details of the part*</td>
                        <td> <asp:TextBox ID="txtInquire" runat="server"  style="overflow-y:scroll; border-radius:3px;padding:5px; border: 1px solid #d5cdcd;margin:0 0 10px 10px;" Height="125px" Width="260px" TextMode="MultiLine"></asp:TextBox>&nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtInquire" Display="Dynamic" ErrorMessage="This field can not be empty" Font-Size="Small" ForeColor="Red" Height="12px"></asp:RequiredFieldValidator></td>
                   
                          </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td><%--<asp:LinkButton ID="LinkButton2" runat="server" CssClass="loginbtn" Style="height: 10px; width: 60px;margin:10px 0 0 200px; ">Submit</asp:LinkButton>--%>
                            <asp:LinkButton ID="btnNotify" runat="server"  Style="  margin-right:3px; margin-left:12px; margin-top:10px;border-radius:5px; padding-left:12px;   border: 3px solid #d5cdcd; "
                                   Height="30px" Width="85px" CssClass="myButton"   OnClick="btnNotify_Click" ><b> Submit</b></asp:LinkButton>
                        </td>

                    </tr>
                </table>



            </td>
            
        </tr>
        
    </table>



</asp:Content>
