<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="HomestayBookingAll.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
    <br />
    <br />


    <div class="content" style="background-image: url('Images/slide1.jpg'); height:550px;">
        <div class="container_12">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <table style="width: 97%; height: auto; margin-left: 13px; background-color: black; border-radius: 20px">
                    <tr>
                        <td style="height: 94px;" colspan="2"></td>
                        <td style="height: 94px; font-size: medium; text-align: center;" colspan="6">
                            <br />
                            <asp:Label ID="titleLabel" runat="server">View Homestay/Resort Booking</asp:Label>
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
                            <asp:GridView ID="GridViewHomestayBooking" runat="server" AutoGenerateColumns="False" BorderColor="White" BorderStyle="Ridge" CellSpacing="2" EnableTheming="True" Height="223px" PageSize="3" TabIndex="3" UseAccessibleHeader="False" Width="863px" AllowPaging="True" OnPageIndexChanging="GridViewHomestayBooking_PageIndexChanging"  >
                                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                <EmptyDataRowStyle ForeColor="White" />
                                <PagerSettings PageButtonCount="5" />
                                <Columns>
                                    
                                    
                                    
                                    <asp:BoundField DataField="HR_Id" HeaderText="Home/resort ID" />
                                    <asp:BoundField DataField="HR_B_Id" HeaderText="Booking Id" />
                                    <asp:BoundField DataField="NumberOfPerson" HeaderText="Person" />
                                    <asp:BoundField DataField="CheckInDate" HeaderText="Check In Date" />
                                    <asp:BoundField DataField="CheckOutDate" HeaderText="Check Out Date" />
                                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                    <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" />
                                </Columns>
                                <PagerStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                <RowStyle VerticalAlign="Top" />
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
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

