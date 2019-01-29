<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CancelationResponse.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />


    <div class="content" style="background-image: url('Images/slide1.jpg'); height: 550px;">
        <div class="container_12">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table style="width: 97%; height: auto; margin-left: 13px; background-color: black; border-radius: 20px">
                        <tr>
                            <td style="height: 94px; width: 314px;"></td>
                            <td colspan="4" style="height: 94px; text-align:center;">
                                <br />
                                <asp:Label ID="titleLabel" runat="server">Cancelation  Response</asp:Label>
                            </td>
                            <td style="height: 94px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td style="height: 61px; width: 314px;">&nbsp;</td>
                            <td style="height: 61px; font-size: medium; width: 113px;" colspan="2">Refund&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td style="height: 61px; ">
                                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="150px" ValidationGroup="crg"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="crg">*</asp:RequiredFieldValidator>
                            </td>
                            <td colspan="2" style="height: 61px;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="height: 81px; width: 314px;"></td>
                            <td colspan="2" style="height: 81px; font-size: medium; width: 113px;">Description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td style="height: 81px;">
                                <asp:TextBox ID="TextBox2" runat="server" Height="40px" TextMode="MultiLine" Width="152px" ValidationGroup="crg"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="crg">*</asp:RequiredFieldValidator>
                            </td>
                            <td colspan="2" style="height: 81px;"></td>
                        </tr>
                        <tr>
                            <td style="height: 43px; width: 314px;">
                                &nbsp;</td>
                            <td style="height: 43px; width: 6px;">
                                <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="Submit" Width="69px" ValidationGroup="crg" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td colspan="3" style="height: 43px;">
                                <asp:Label ID="Label3" runat="server" ForeColor="#FC0000"></asp:Label>
                            </td>
                            <td style="text-align: center; height: 43px;">&nbsp;</td>
                            <td style="height: 43px;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="height: 43px; width: 6px;">&nbsp;</td>
                            <td colspan="3" style="height: 43px;">&nbsp;</td>
                            <td style="text-align: center; height: 43px;">&nbsp;</td>
                            <td style="height: 43px;">&nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    &nbsp;&nbsp;&nbsp;
    </div>
</asp:Content>

