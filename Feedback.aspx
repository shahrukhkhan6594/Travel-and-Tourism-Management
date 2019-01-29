<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />


    <div class="content" style="background-image: url('Images/slide1.jpg'); height:auto;">
        <div class="container_12">
            <br />
            <br />
            <br />
            <table style="width: 50%; height: auto; margin-left: 238px; background-color: black; border-radius: 20px">
                <tr>
                    <td colspan="2">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td style="color: #808080; height: 30px; font-size: large; text-align: center;" colspan="4">Your Feedback</td>
                </tr>
                <tr>
                    <td style="color: #808080; height: 30px; font-size: large; text-align: center;" colspan="4">&nbsp;</td>
                </tr>
                <tr>
                    <td style="color: #808080; height: 41px; text-align: center;" colspan="4">
                        <asp:TextBox ID="TextBoxName" runat="server" Height="22px" Width="300px" Placeholder="Name" ValidationGroup="fbv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Insert Name" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fbv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="color: #808080; height: 201px; text-align: center;" colspan="4">
                        <asp:TextBox ID="TextBoxFeedback" runat="server" Height="175px" Width="300px" placeholder="Write Your Feedback....." TextMode="MultiLine" ValidationGroup="fbv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxFeedback" ErrorMessage="Write feedback" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fbv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 213px; color: #808080; text-align: right; height: 39px;">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Height="26px" Width="61px" OnClick="Button1_Click" ValidationGroup="fbv" />
                    </td>
                    <td style="width: 45px; color: #808080; text-align: center; height: 39px;"></td>
                    <td style="text-align: left; width: 95px; height: 39px;">
                        <input type="reset" ID="Button2" runat="server" style="height:26px;width:61px;"   />
                    </td>
                    <td style="text-align: left; height: 39px;">
                        </td>
                </tr>
                <tr>
                    <td style="text-align: center; height: 33px;" colspan="4">
                        <asp:Label ID="Label1" runat="server" ForeColor="#FC0000"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="text-align: center;" colspan="2">&nbsp;</td>
                    <td style="text-align: center" colspan="2">&nbsp;</td>
                </tr>

            </table>
        </div>
    </div>
</asp:Content>

