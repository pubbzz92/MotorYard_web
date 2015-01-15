<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/Profile_Sub.master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Motor_Yard.Profile.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headProfile" runat="server">
    <style>
        .auto-style10 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyProfile" runat="server">

    <table cellpadding="0" cellspacing="0">
        <tr>
            <td>

                
    <table runat="server" id="RegForm" style="display: block; float: none; width: 500px; margin-left: 0; margin-right: 0; margin-top: 0; vertical-align: top">
        <tr>
            <td colspan="2" style="padding: 2px 0 15px 75px; vertical-align: top; font-size: 25px; text-align: left;">Basic Information</td>

        </tr>

        <tr>
            <td style="padding: 5px 0 5px 10px; text-align: right;" class="auto-style10;">Company Name</td>
            <td>
                <asp:TextBox ID="email" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">Email</td>
            <td>
                <asp:TextBox ID="password" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 1px;" class="auto-style10">Contact Number 1</td>
            <td>
                <asp:TextBox ID="repassword" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">Contact Number 2</td>
            <td>
                <asp:TextBox ID="fname" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>
        </tr>
        

        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">Fax</td>
            <td>
                <asp:TextBox ID="lastname" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>

        </tr>
       <%-- <tr>

            <td style="text-align: right; padding-right: 2px;" class="auto-style10">City</td>
            <td>
                <asp:DropDownList ID="city" runat="server" Style="width: 290px; border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;">
                    <asp:ListItem>Colombo</asp:ListItem>
                    <asp:ListItem>Kandy</asp:ListItem>
                    <asp:ListItem>Matara</asp:ListItem>
                    <asp:ListItem>Anuradapura</asp:ListItem>
                </asp:DropDownList></td>
        </tr>--%>

         <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10"> </td>
            <td>
                <br />
                <br />
                  </td>

        </tr>

         <tr>
            <td style="text-align: right; padding-right: 2px; vertical-align:top;" class="auto-style10"> Address </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd;
             display: block; float: right; margin: 2px 75px 2px 0;" TextMode="MultiLine" Height="100px"></asp:TextBox></td>

        </tr>
        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">City</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>

        </tr>
        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">District</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>

        </tr>
       
        <tr>
            <td colspan="2">

                <asp:LinkButton ID="submit" runat="server" CssClass="loginbtn" Style="height: 10px; width: 101px; margin: 2px 75px 2px 0; float: right;">Update</asp:LinkButton>

            </td>
        </tr>

    </table>

    <br />
    <br />

    <table cellpadding="0" cellspacing="0" style="display: block; float: none; width: 500px; margin-left: 0; margin-right: 0; margin-top: 0; vertical-align: top">
        <tr>
            <td colspan="2" style="padding: 2px 0 15px 75px; vertical-align: top; font-size: 25px; text-align: left;">Change Password</td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">Current Password</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">New Password</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10">Confirm Password  </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;"></asp:TextBox></td>
        </tr>

     
        
        <tr>

            <td colspan="2" style="padding: 5px 0 10px 75px;" class="auto-style8">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="loginbtn" Style="height: 10px; width: 101px; margin: 2px 75px 2px 0; float: right;">Reset</asp:LinkButton>
                 

            </td>
        </tr>
    </table>


            </td>
            <td style="vertical-align:top;"> 

 <table cellpadding="0" cellspacing="0" style="display: block; float: none; width: 500px; margin-left: 0; margin-right: 0; margin-top: 0; vertical-align: top">
            <tr>
            <td colspan="2" style="padding: 2px 0 15px 75px; vertical-align: top; font-size: 25px; text-align: left;">Change Profile Picture</td>
        </tr>
        <tr>
            <td style="text-align: right; padding-right: 2px;" class="auto-style10"> Upload Photo</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="278px" Style="border-radius: 3px; padding: 5px; border: 1px solid #d5cdcd; display: block; float: right; margin: 2px 75px 2px 0;" />

            </td>
        </tr>
     
        <tr>
            <td style="  padding-right: 2px;" class="auto-style10" colspan="2">
                <img src="../images/pr.jpg" style="display:block; float:none; margin:10px 0 10px 95px; height:233px;  border:10px solid #fff ;
-webkit-box-shadow: 0px 0px 6px 0px rgba(50, 50, 50, 0.75);
-moz-box-shadow:    0px 0px 6px 0px rgba(50, 50, 50, 0.75);
box-shadow:         0px 0px 6px 0px rgba(50, 50, 50, 0.75);" />
            </td>
        </tr>

     
        
        <tr>

            <td colspan="2" style="padding: 5px 0 10px 75px;" class="auto-style8">
                
                 
<asp:LinkButton ID="LinkButton2" runat="server" CssClass="loginbtn" Style="height: 10px; width: 101px; margin: 2px  2px 0 20px; float: left;">Change</asp:LinkButton>
            </td>
        </tr>
    </table>


                 



            </td>
        </tr>
    </table>


</asp:Content>
