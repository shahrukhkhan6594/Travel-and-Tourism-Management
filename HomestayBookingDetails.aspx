<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="HomestayBookingDetails.aspx.cs" Inherits="Default3" %>

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
                                Homestay and Resort Booking Details</td>
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
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                            <td colspan="2">Type :
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                            <td colspan="2">Category :
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 52px; height: 29px;"></td>
                            <td colspan="2" style="height: 29px">
                            </td>
                            <td colspan="2" style="height: 29px">
                            </td>
                            <td colspan="2" style="height: 29px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 52px; height: 30px;"></td>
                            <td colspan="2" style="height: 30px">Check In :
                                <asp:Label ID="checkinLabel" runat="server"></asp:Label>
                            </td>
                            <td colspan="2" style="height: 30px">Check Out :
                                <asp:Label ID="checkoutLabel" runat="server"></asp:Label>
                            </td>
                            <td colspan="2" style="height: 30px">Person :
                                <asp:Label ID="personLabel" runat="server"></asp:Label>
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
                            <td style="width: 52px; height: 27px;"></td>
                            <td style="height: 27px;" colspan="2">
                                Stars :
                                <asp:Label ID="StarLabel" runat="server"></asp:Label>
                            </td>
                            <td style="height: 27px;" colspan="2">
                                Country :
                                <asp:Label ID="CountryLabel1" runat="server"></asp:Label>
                            </td>
                            <td style="height: 27px;" colspan="2">
                                City :
                                <asp:Label ID="CityLabel2" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr id="hiderow2" runat="server">
                            <td style="width: 52px; height: 26px;"></td>
                            <td style="height: 26px;" colspan="2"></td>
                            <td style="width: 26px; height: 26px;"></td>
                            <td style="width: 133px; height: 26px;"></td>
                            <td style="width: 25px; height: 26px;"></td>
                            <td style="width: 98px; height: 26px;"></td>
                        </tr>
                        <tr id="hiderow3" runat="server">
                            <td style="width: 52px; height: 55px;"></td>
                            <td style="height: 55px;" colspan="2">
                                Name :
                                <asp:Label ID="NameLabel1" runat="server"></asp:Label>
                            </td>
                            <td style="height: 55px;" colspan="2">Amount :
                                <asp:Label ID="AmoutLabel" runat="server"></asp:Label>
                            </td>
                            <td style="height: 55px;" colspan="2">
                                Description :
                                <asp:Label ID="DesLabel2" runat="server"></asp:Label>
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

