<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Motor_Yard.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 232px;
        }
        .auto-style9 {
            width: 12px;
        }
        .auto-style11
        {
            height: 35px;
            width: 561px;
        }
        .auto-style12
        {
            height: 42px;
            width: 514px;
        }
        .auto-style13
        {
            width: 561px;
        }
        .auto-style14
        {
            width: 514px;
        }
         .auto-style15
        {
            height: 25px;
            width: 514px;
            float:left;
            margin-top:5px;
           margin-bottom:5px;
           margin-left:30px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:block; width:1000px; ">
        <table>
            <tr><td colspan="2" style="width:1000px;font-size:25px;font-weight:normal;color:#6d7fe6;padding:15px 0 0 0;">Welcome, Please Sign In!</td></tr>
            <tr><td colspan="2" style="padding:10px 0 0 0;font-size:18px;font-weight:normal; color:#2c2b2b"> About login / registration<hr style="color:#c1d5ef; height:1px;" /></td></tr>
            <tr><td colspan="2" style="padding:10px 0 20px 0;font-size:14px;font-weight:normal;color:#2c2b2b">Insert your login / registration information here.</td></tr>
            <tr> <td style="vertical-align:top;">
      
                <asp:Panel ID="PanelnewRegBtn" runat="server">
                          <table style="float:left; width:500px; margin-left: 0; margin-right: 0; margin-top: 0;border-right:1px solid #c1d5ef;" >
                    <tr>
                        <td rowspan:"3" style="width:500px; font-size:25px;padding:0 75px 25px 0;text-align:right;margin:0 auto;" > <b> New User ?</b> </td>

                    </tr>
                    
                    <tr>
                        <td style="padding:5px 75px 0 0;text-align:right;font-size:15px" >Get started now. It's fast and easy!</td>

                    </tr>
                    <tr> 
                        <td>
                            <asp:LinkButton ID="LinkButtonRegs" runat="server"   Style="  margin-right:80px; margin-top:20px; float:right;border-radius:5px;padding-left:5px; padding-left:10px;  border: 3px solid #d5cdcd; " OnClick="LinkButtonRegs_Click"  Height="27px" Width="85px" BackColor="#95D395" ForeColor="Black" BorderStyle="Solid"  > <b> Register </b></asp:LinkButton>
                           <%-- <asp:LinkButton ID="LinkButton3" runat="server" Style="  margin-right:130px; float:left;border-radius:5px;padding-left:5px; padding-left:20px;  border: 3px solid #d5cdcd; " PostBackUrl="~/Profile/notification.aspx" 
                                Height="27px" Width="85px" BackColor="#95D395" ForeColor="Black" BorderStyle="Solid"><b>Log in</b></asp:LinkButton>--%>
                        </td>

                    </tr>
                
                  </table>
</asp:Panel>


                <table runat="server" visible="false" id="RegForm" style="float:left; width:700px; margin-left: 0; margin-right: 0; margin-top:0;margin-bottom:10px; border-right:1px solid #c1d5ef;vertical-align:top" >
                    <tr> 
                        <td colspan="2" style="padding:5px 75px 5px 0;text-align:left;font-size:15px" class="auto-style11">Fill in the registration form: (<span style="color:red;"> &#x26B9 </span>  Required Field )</td>
                        
                    </tr>
                   
                    <tr>
                        <td style="text-align:left" class="auto-style15">Your ID<span style="color:red;font-size:27px"><strong>  *  </strong></span>

                             <asp:TextBox ID="txtID" runat="server" style="float:right; margin-right:130px;  border-radius:3px;padding:5px; border: 1px solid #d5cdcd; margin-left:10px;" Width="217px" ></asp:TextBox>
                            
                        </td>
                        <td style="padding-right:10px">

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtID" ErrorMessage="The ID is incorrect" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]{3}$" Display="Dynamic"></asp:RegularExpressionValidator>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="txtID" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>

                    </tr>
                    <tr>
                        <td style="text-align:left;" class="auto-style15">Full Name<span style="color:red;font-size:27px"><strong>  *  </strong></span> 
                            <asp:TextBox ID="txtName" runat="server" style="float:right; margin-right:130px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd; margin-left:10px;" Width="217px"></asp:TextBox>
                            
                        </td>
                        <td style="padding-right:10px">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="txtName" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>                       

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">Name of the Shop<span style="color:red;font-size:27px"><strong>  *  </strong></span> 
                            <asp:TextBox ID="txtShopName" runat="server" style="float:right; margin-right:130px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd; margin-left:10px;" Width="217px"></asp:TextBox>
                            
                        </td>

                              <td style="padding-right:10px">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="txtShopName" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>                       

                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style15">Shop Area<span style="color:red;font-size:27px"><strong>  *  </strong></span> 
                            <asp:DropDownList ID="drpArea" runat="server"  style="float:right; margin-right:130px; width:217px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;">
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
                            
                        </td>
                              <td style="padding-right:10px">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="drpArea" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>                       

                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style15">Shop Address <span style="color:red;font-size:27px"><strong>  *  </strong></span>
                             <asp:TextBox ID="txtAddress" runat="server" style="float:right; margin-right:130px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd; margin-left:10px;" Width="217px"></asp:TextBox>
                            
                        </td>
                              <td style="padding-right:10px">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="txtAddress" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>                       

                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style15">Contact Number <span style="color:red;font-size:27px"><strong>  *  </strong></span> 
                            <asp:TextBox ID="txtContact" runat="server" style="float:right; margin-right:130px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd; margin-left:10px;" Width="217px"></asp:TextBox>
                            
                        </td>

                              <td style="padding-right:10px">

                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtContact" Display="Dynamic" ErrorMessage="Enter a valid contact number" Font-Size="Small" ForeColor="Red" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="txtContact" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>                       

                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style15" >Email Address <span style="color:red;font-size:27px"><strong>  *  </strong></span> 
                            <asp:TextBox ID="txtEmail" runat="server" style="float:right; margin-right:130px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd; margin-left:10px;" Width="217px"></asp:TextBox>
                           
                            
                        </td>

                              <td style="padding-right:10px">

                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="The Email address is Not valid" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="txtEmail" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>                       

                        </td>

                    </tr>

                     <tr>
                        <td class="auto-style15" > Password <span style="color:red;font-size:27px"><strong>  *  </strong></span> 
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" style="float:right; margin-right:130px;border-radius:3px;padding:5px; border: 1px solid #d5cdcd; margin-left:10px;" Width="217px"></asp:TextBox>
                           
                               <br /> 
                        </td>

                               <td style="padding-right:10px">

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="This field can not be empty" ControlToValidate="txtPassword" Display="Dynamic" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>                       

                        </td>

                    </tr>

                     <tr>
                        <td colspan="2" class="auto-style13" >

                            <asp:LinkButton ID="submit" runat="server"  Style="  margin-right:282px;margin-top:10px; float:right;border-radius:5px;padding-left:3px;  border: 3px solid #d5cdcd; " OnClick="submit_Click"  Height="27px" Width="130px" BackColor="#95D395" ForeColor="Black" BorderStyle="Solid" ValidateRequestMode="Disabled" ><b> Create Account</b></asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonBack" runat="server"  Style="  margin-right:5px; margin-top:10px; float:right;border-radius:5px;padding-left:23px;  border: 3px solid #d5cdcd; "
                                 OnClick="LinkButtonBack_Click"  Height="27px" Width="85px" BackColor="#95D395" ForeColor="Black" BorderStyle="Solid" ><b> Back</b></asp:LinkButton>
                            <%--<tr><td style="text-align:left; padding-right:15px;" class="auto-style12">Your ID</td>
                        <td class="auto-style12">
                            
                        <asp:TextBox ID="email" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:left;margin:2px 75px 2px 0px;" ToolTip="Required Field" >

                        </asp:TextBox><asp:RequiredFieldValidator ID="IdValidator" runat="server" ControlToValidate="email" ErrorMessage="This field is Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:2px;" class="auto-style10">Full Name</td>
                        <td>
                        <asp:TextBox ID="password" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:1px;" class="auto-style10">Re-enter password</td>
                        <td><asp:TextBox ID="repassword" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:2px;" class="auto-style10">First name</td>
                        <td>
                    <asp:TextBox ID="fname" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right;padding-right:2px;" class="auto-style10">Last name</td>
                        <td><asp:TextBox ID="lastname" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                        
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:2px;" class="auto-style10">Reg number</td>
                        <td><asp:TextBox ID="TextBox3" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                        
                    </tr>
                    <tr>
                        
                        <td  style="text-align:right; padding-right:2px;" class="auto-style10">City</td>
                       <td ><asp:DropDownList ID="city" runat="server" style="width:278px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;">
                            <asp:ListItem>Colombo</asp:ListItem>
                            <asp:ListItem>Kandy</asp:ListItem>
                            <asp:ListItem>Matara</asp:ListItem>
                            <asp:ListItem>Anuradapura</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="2">

                            <asp:LinkButton ID="submit" runat="server" CssClass="loginbtn" Style="height: 10px; width: 101px;margin:2px 75px 2px 0;float:right; " OnClick="submit_Click" >Create Account</asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonBack" runat="server" style="display:block; margin: 10px 5px; color:#9b9b9b; text-align:right; width:100px; float:right;" OnClick="LinkButtonBack_Click" >back</asp:LinkButton>

                        </td>
                    </tr>--%>

                            

                        </td>
                    </tr>
                  
                    

                        <%--<tr><td style="text-align:left; padding-right:15px;" class="auto-style12">Your ID</td>
                        <td class="auto-style12">
                            
                        <asp:TextBox ID="email" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:left;margin:2px 75px 2px 0px;" ToolTip="Required Field" >

                        </asp:TextBox><asp:RequiredFieldValidator ID="IdValidator" runat="server" ControlToValidate="email" ErrorMessage="This field is Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:2px;" class="auto-style10">Full Name</td>
                        <td>
                        <asp:TextBox ID="password" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:1px;" class="auto-style10">Re-enter password</td>
                        <td><asp:TextBox ID="repassword" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:2px;" class="auto-style10">First name</td>
                        <td>
                    <asp:TextBox ID="fname" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="text-align:right;padding-right:2px;" class="auto-style10">Last name</td>
                        <td><asp:TextBox ID="lastname" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                        
                    </tr>
                    <tr>
                        <td style="text-align:right; padding-right:2px;" class="auto-style10">Reg number</td>
                        <td><asp:TextBox ID="TextBox3" runat="server" Width="278px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;"></asp:TextBox></td>
                        
                    </tr>
                    <tr>
                        
                        <td  style="text-align:right; padding-right:2px;" class="auto-style10">City</td>
                       <td ><asp:DropDownList ID="city" runat="server" style="width:278px; border-radius:3px;padding:5px; border: 1px solid #d5cdcd; display:block;float:right;margin:2px 75px 2px 0;">
                            <asp:ListItem>Colombo</asp:ListItem>
                            <asp:ListItem>Kandy</asp:ListItem>
                            <asp:ListItem>Matara</asp:ListItem>
                            <asp:ListItem>Anuradapura</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td colspan="2">

                            <asp:LinkButton ID="submit" runat="server" CssClass="loginbtn" Style="height: 10px; width: 101px;margin:2px 75px 2px 0;float:right; " OnClick="submit_Click" >Create Account</asp:LinkButton>
                            <asp:LinkButton ID="LinkButtonBack" runat="server" style="display:block; margin: 10px 5px; color:#9b9b9b; text-align:right; width:100px; float:right;" OnClick="LinkButtonBack_Click" >back</asp:LinkButton>

                        </td>
                    </tr>--%>
                    
                </table>


                 </td>
                <td style="vertical-align:top;">
                     <table cellpadding="0" cellspacing="0" class="auto-style1" style="float:right; width:500px;   margin-bottom:30px; margin-top:0px; " >
        <tr>
            <td colspan="2" style="padding:2px 0 15px 75px; vertical-align:top;font-size:25px;text-align:left;"><b> User Login</b></td>
        </tr>
        <tr>
            <td style="text-align:left;padding:0 0 0 75px;" class="auto-style9">Username</td>
            <td style="padding: 1px 10px 1px 10px;" class="auto-style8"> <asp:TextBox ID="TextBox1" runat="server" Width="240px" style="border-radius:3px;padding:5px; border: 1px solid #d5cdcd;"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="text-align:left;padding:0 0 0 75px;" class="auto-style9">Password</td>
            <td style="padding: 5px 10px 2px 10px;" class="auto-style8"><asp:TextBox ID="TextBox2" runat="server" Width="240px" style="border-radius:3px; padding:5px;border: 1px solid #d5cdcd;" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            
            <td colspan="2" style="padding: 5px 10px 5px 75px;" class="auto-style8"><asp:CheckBox ID="CheckBox1" runat="server" style="margin-left: -4px;"/>Remember me?</td>
            
        </tr>
        <tr>
            
            <td colspan="2" style="padding:5px 0 10px 75px;" class="auto-style8">
<asp:LinkButton ID="LinkButton1" runat="server" Style="text-decoration:none;">Forgot password?</asp:LinkButton></td>
        </tr>
        <tr>
            
            <td colspan="2"style="padding:5px 0 10px 75px;" class="auto-style8">
        <asp:LinkButton ID="LinkButton2" runat="server" Style="  margin-right:130px; float:left;border-radius:5px;padding-left:5px; padding-left:20px;  border: 3px solid #d5cdcd; " PostBackUrl="~/Profile/notification.aspx"  Height="27px" Width="85px" BackColor="#95D395" ForeColor="Black" BorderStyle="Solid"><b>Log in</b></asp:LinkButton></td>
        
        </tr>
    </table>
    </td>
            </tr>
        </table>
 </div>
   
</asp:Content>


