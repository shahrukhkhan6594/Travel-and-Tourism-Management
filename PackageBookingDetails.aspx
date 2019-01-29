<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="PackageBookingDetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />



    <div id="packdiv" runat="server" class="content" style="background-image: url('Images/slide1.jpg'); height:450px;">
        <div class="container_12">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table style="width: 97%; height: auto; margin-left: 11px; background-color: black; border-radius: 20px; color: #FFFFFF;">
                        <tr>
                            <td style="width: 52px; height: 59px;">&nbsp;</td>
                            <td style="height: 59px; text-align: center; font-size: medium;" colspan="6">
                                
                                <br />
                                Package Booking Details</td>
                        </tr>
                        <tr>
                            <td style="width: 52px">&nbsp;</td>
                            <td colspan="2">&nbsp;</td>
                            <td style="width: 26px">&nbsp;</td>
                            <td style="width: 133px">&nbsp;</td>
                            <td style="width: 25px">&nbsp;</td>
                            <td style="width: 98px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 52px">&nbsp;</td>
                            <td colspan="2">ID :
                                <asp:Label ID="idLabel" runat="server"></asp:Label>
                            </td>
                            <td colspan="2">Type :
                                <asp:Label ID="TyLabel0" runat="server"></asp:Label>
                            </td>
                            <td colspan="2">Category :
                                <asp:Label ID="CatLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 52px; height: 30px;">&nbsp;</td>
                            <td style="height: 30px;" colspan="2">&nbsp;</td>
                            <td style="width: 26px; height: 30px;">&nbsp;</td>
                            <td style="width: 133px; height: 30px;">&nbsp;</td>
                            <td style="width: 25px; height: 30px;">&nbsp;</td>
                            <td style="width: 98px; height: 30px;">&nbsp;</td>
                        </tr>
                        <tr id="hiderow1" runat="server">
                            <td style="width: 52px; height: 30px;"></td>
                            <td style="height: 30px;" colspan="2">
                                Country :
                                <asp:Label ID="CountryLabel1" runat="server"></asp:Label>
                            </td>
                            <td style="height: 30px;" colspan="2">
                                City :
                                <asp:Label ID="CityLabel1" runat="server"></asp:Label>
                            </td>
                            <td style="height: 30px;" colspan="2">
                                Amount :
                                <asp:Label ID="AmoutLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr id="hiderow2" runat="server">
                            <td style="width: 52px; height: 30px;">&nbsp;</td>
                            <td style="height: 30px;" colspan="2">&nbsp;</td>
                            <td style="width: 26px; height: 30px;">&nbsp;</td>
                            <td style="width: 133px; height: 30px;">&nbsp;</td>
                            <td style="width: 25px; height: 30px;">&nbsp;</td>
                            <td style="width: 98px; height: 30px;">&nbsp;</td>
                        </tr>
                        <tr id="hiderow3" runat="server">
                            <td style="width: 52px; height: 55px;"></td>
                            <td style="height: 55px;" colspan="2">
                                Days :
                                <asp:Label ID="DayLabel1" runat="server"></asp:Label>
                            </td>
                            <td style="height: 55px;" colspan="2">Description :
                                <asp:Label ID="DesLabel1" runat="server"></asp:Label>
                            </td>
                            <td style="width: 25px; height: 55px;">
                                </td>
                            <td style="width: 98px; height: 55px;">
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 52px">&nbsp;</td>
                            <td style="width: 35px">
                                <asp:Button ID="CancelButton" runat="server" Height="26px" OnClick="CancelButton_Click" Text="Cancel" Width="70px" />
                            </td>
                            <td style="width: 109px">
                                <asp:Button ID="PaymentButton" runat="server" Height="26px" OnClick="PaymentButton_Click" Text="Payment" Width="70px" />
                                &nbsp;
                            </td>
                            <td style="width: 26px">&nbsp;</td>
                            <td style="width: 133px">
                                &nbsp;</td>
                            <td style="width: 25px">&nbsp;</td>
                            <td style="width: 98px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 52px; height: 30px;"></td>
                            <td style="width: 35px; height: 30px;"></td>
                            <td style="width: 109px; height: 30px;"></td>
                            <td style="width: 26px; height: 30px;"></td>
                            <td style="width: 133px; height: 30px;"></td>
                            <td style="width: 25px; height: 30px;"></td>
                            <td style="width: 98px; height: 30px;"></td>
                        </tr>

                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>

