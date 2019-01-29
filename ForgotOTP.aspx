<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ForgotOTP.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    
        <div class="content" style="background-image: url('Images/slide2.jpg'); height: 550px;">
            <div class="container_12">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table style="width: 57%; height: auto; margin-left: 206px; background-color: black; border-radius: 20px">
                 <tr>
                    <td style="width: 55px">&nbsp;</td>
                    <td style="width: 147px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 55px"></td>
                    <td style="color: #808080;" colspan="2">Enter&nbsp; Code</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 55px">&nbsp;</td>
                    <td style="color: #808080;" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 36px;"></td>
                    <td style="color: #808080; height: 36px;" colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="300px" placeholder="Enter Code ######" MaxLength="6" ValidationGroup="fov"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Insert Code" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fov">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="#FC0000" SetFocusOnError="True" ValidationExpression="\d+" ValidationGroup="fov">*</asp:RegularExpressionValidator>
                    </td>
                    <td style="height: 36px"></td>
                </tr>
                <tr>
                    <td style="width: 55px"></td>
                    <td style="width: 147px; color: #808080; text-align: left;">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 55px">&nbsp;</td>
                    <td style="width: 147px; color: #FC0000;">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="fov" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 55px">&nbsp;</td>
                    <td style="width: 147px">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
 
                </table>
            </div>
        </div>
   
</asp:Content>

