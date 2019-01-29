<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="TransportBookingAll.aspx.cs" Inherits="TransportBookingAll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />


    <div class="content" style="background-image: url('Images/slide1.jpg'); height:550px;">
        <div class="container_12">
            <asp:scriptmanager id="ScriptManager1" runat="server"></asp:scriptmanager>
            <asp:updatepanel id="UpdatePanel1" runat="server">
                <ContentTemplate>
                <table style="width: 97%; height: auto; margin-left: 13px; background-color: black; border-radius: 20px">
                    <tr>
                        <td style="height: 94px;" colspan="2"></td>
                        <td style="height: 94px; font-size: medium; text-align: center;" colspan="6">
                            <br />
                            <asp:Label ID="titleLabel" runat="server">View Transport Booking</asp:Label>
                        </td>
                        <td style="height: 94px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    </tr>
                    <tr>
                        <td style="height: 61px; width: 110px;">&nbsp;</td>
                        <td style="height: 61px; width: 85px;">From&nbsp; Date :</td>
                        <td style="height: 61px; width: 230px;">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" ValidationGroup="fbv"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Insert To Date" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fbv">*</asp:RequiredFieldValidator>
                        </td>
                        <td colspan="2" style="text-align: center; height: 61px;">To Date :</td>
                        <td colspan="2" style="height: 61px;">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" ValidationGroup="fbv"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Insert Date" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fbv">*</asp:RequiredFieldValidator>
                        </td>
                        <td colspan="2" style="height: 61px;">
                            <asp:Button ID="SearchButton2" runat="server" ForeColor="#00001A" OnClick="SearchButton_Click" Text="Search" Width="69px" ValidationGroup="fbv" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 43px; ">&nbsp;</td>
                        <td colspan="2" style="text-align: center; height: 43px;">&nbsp;</td>
                        <td colspan="2" style="height: 43px;">&nbsp;</td>
                        <td colspan="2" style="height: 43px;">&nbsp;</td>
                    </tr>
                    <tr style="text-align:center;">
                        <td colspan="9" style="text-align:center;">
                            <asp:GridView ID="GridViewTransportBooking" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderColor="White" BorderStyle="Ridge" CellSpacing="10" EnableTheming="True" Height="224px" OnPageIndexChanging="GridViewTransportBooking_PageIndexChanging"  PageSize="3" TabIndex="3" UseAccessibleHeader="False" Width="863px">
                                <EmptyDataRowStyle ForeColor="White" />
                                <PagerSettings PageButtonCount="5" />
                                <Columns>
                                   
                                    <asp:BoundField DataField="T_Id" HeaderText=" Transport ID" />
                                    <asp:BoundField DataField="T_B_Id" HeaderText="Booking Id" />
                                    <asp:BoundField DataField="To_Country" HeaderText="To Country" />
                                    <asp:BoundField DataField="To_City" HeaderText="to City" />
                                    <asp:BoundField DataField="From_Country" HeaderText="from Country" />
                                    <asp:BoundField DataField="Date" HeaderText="From City" />
                                    <asp:BoundField DataField="Time" HeaderText="Time" />
                                    <asp:BoundField DataField="NoOfPerson" HeaderText="Passenger" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                    <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr id="hiderow8" runat="server">
                        <td colspan="2">&nbsp;</td>
                        <td style="width: 98px" colspan="2">&nbsp;</td>
                        <td style="width: 91px">&nbsp;</td>
                        <td style="width: 86px">
                            &nbsp;</td>
                        <td style="width: 207px" colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                </ContentTemplate>
            </asp:updatepanel>
        </div>
    </div>
</asp:Content>

