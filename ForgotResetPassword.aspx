<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ForgotResetPassword.aspx.cs" Inherits="Default2" %>

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
                <table style="width: 57%; height: 267px; margin-left: 206px; background-color: black;  border-radius: 20px">
               <tr>
                    <td style="width: 55px">&nbsp;</td>
                    <td style="text-align: center; font-size: large;" colspan="3">
                        <br />
                        Reset Password</td>
                    <td>&nbsp;</td>
                </tr>
               
                <tr>
                    <td style="width: 55px; height: 29px;">&nbsp;</td>
                    <td style="width: 193px; color: #808080; height: 29px;">&nbsp;</td>
                    <td colspan="2" style="height: 29px">
                        &nbsp;</td>
                    <td style="height: 29px">&nbsp;</td>
                </tr>
               
                <tr>
                    <td style="width: 55px; height: 40px;"></td>
                    <td style="width: 193px; color: #808080; height: 40px;">Create New Password</td>
                    <td colspan="2" style="height: 40px">
                        <asp:TextBox ID="TextBox1" runat="server" Width="150px" ToolTip="Insert User Id" border="none" outline="0" border-bottom="1px solid black" background="transparent" TextMode="Password" ValidationGroup="rpv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Insert New Password" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="rpv">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 40px"></td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 39px;"></td>
                    <td style="width: 193px; color: #808080; height: 39px;">Confirm New Password</td>
                    <td colspan="2" style="height: 39px">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ToolTip="Insert Password" Width="150px" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="rpv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Confirm New Password" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="rpv">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 39px"></td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 39px;"></td>
                    <td style="width: 193px; color: #FC0000; height: 39px;"></td>
                    <td style="height: 39px; width: 25px">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="30px" Width="65px" OnClick="Button1_Click" ValidationGroup="rpv"  />
                    </td>
                    <td style="height: 39px">
                        &nbsp;</td>
                    <td style="height: 39px"></td>
                </tr>
                <tr>
                    <td style="width: 55px">&nbsp;</td>
                    <td style="width: 193px">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" ForeColor="#FC0000"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>

                </table>
            </div>
        </div>
    </asp:Content>

