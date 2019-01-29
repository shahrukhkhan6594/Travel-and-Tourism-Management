<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
                    <td style="width: 102px">&nbsp;</td>
                    <td style="text-align: center; font-size: large;" colspan="3">
                        <br />
                        Forgot Password</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td style="width: 102px; height: 29px;">&nbsp;</td>
                    <td style="width: 129px; color: #808080; height: 29px;">&nbsp;</td>
                    <td colspan="2" style="height: 29px">&nbsp;</td>
                    <td style="height: 29px">&nbsp;</td>
                </tr>

                <tr>
                    <td style="width: 102px; height: 40px;"></td>
                    <td style="width: 129px; color: #808080; height: 40px;">User Id</td>
                    <td colspan="2" style="height: 40px">
                        <asp:TextBox ID="TextBox1" runat="server" Width="150px" ToolTip="Insert User Id" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="fpv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Insert New Password" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fpv">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 40px"></td>
                </tr>
                <tr>
                    <td style="width: 102px; height: 39px;"></td>
                    <td style="width: 129px; color: #808080; height: 39px;">Mobile Number</td>
                    <td colspan="2" style="height: 39px">
                        <asp:TextBox ID="TextBox2" runat="server" ToolTip="Insert Password" Width="150px" border="none" outline="0" border-bottom="1px solid black" background="transparent" MaxLength="10" ValidationGroup="fpv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Confirm New Password" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fpv">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ForeColor="#FC0000" SetFocusOnError="True" ValidationExpression="\d+" ValidationGroup="fpv">*</asp:RegularExpressionValidator>
                    </td>
                    <td style="height: 39px"></td>
                </tr>
                <tr>
                    <td style="width: 102px; height: 39px;"></td>
                    <td style="width: 129px; color: #FC0000; height: 39px;"></td>
                    <td style="height: 39px; width: 25px">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="30px" Width="65px" OnClick="Button1_Click" ValidationGroup="fpv" />
                    </td>
                    <td style="height: 39px">&nbsp;</td>
                    <td style="height: 39px"></td>
                </tr>
                <tr>
                    <td style="width: 102px">&nbsp;</td>
                    <td style="width: 129px">&nbsp;</td>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" ForeColor="#FC0000"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>

            </table>

        </div>
    </div>

</asp:Content>

