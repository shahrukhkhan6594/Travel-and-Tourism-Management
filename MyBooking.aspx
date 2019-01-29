<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="MyBooking.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <br />
    <br />
    <br />

    <div id="div1" runat="server">

        <div id="packdiv" runat="server" class="content" style="background-image: url('Images/slide1.jpg'); height:600px;">

            <div class="container_12">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table style="width: 97%; height: auto; margin-left: 11px; background-color: black; border-radius: 20px">
                            <tr>
                                <td style="width: 20px; height: 59px;">&nbsp;</td>
                                <td style="height: 59px; text-align: center; font-size: medium;">
                                    <br />
                                    <asp:Label ID="titleLabel" runat="server"> Booking Details</asp:Label>
                                </td>
                            </tr>

                            <tr>
                                <td style="width: 20px">&nbsp;&nbsp;</td>
                                <td>
                                    <asp:GridView ID="GridViewPackageBooking" runat="server" AutoGenerateColumns="False" EnableTheming="True" Height="223px"  PageSize="3" TabIndex="3" UseAccessibleHeader="False" Width="863px" BorderColor="White" BorderStyle="Ridge" CellSpacing="5" OnRowCommand="GridViewPackageBooking_RowCommand">
                                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                        <EmptyDataRowStyle ForeColor="White" />
                                        <PagerSettings PageButtonCount="5" />
                                        <Columns>
                                            <asp:ButtonField HeaderText="" Text="Cancel Booking" Visible="true" />
                                            <asp:BoundField DataField="P_Id" HeaderText="Package ID" />
                                            <asp:BoundField DataField="P_B_Id" HeaderText="Booking Id" />
                                            <asp:BoundField DataField="PackageType" HeaderText="Package Type" />
                                            <asp:BoundField DataField="PackageCategory" HeaderText="Category" />
                                            <asp:BoundField DataField="Country" HeaderText="Country" />
                                            <asp:BoundField DataField="City" HeaderText="City" />
                                            <asp:BoundField DataField="NoOfDays" HeaderText="Days" />
                                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                            <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" />
                                        </Columns>
                                        <PagerStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                        <RowStyle VerticalAlign="Top" />
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20px">&nbsp;&nbsp;</td>
                                <td>
                                    <asp:GridView ID="GridViewTransportBooking" runat="server" AllowPaging="True" AutoGenerateColumns="False" EnableTheming="True" Height="224px"  PageSize="3" TabIndex="3" UseAccessibleHeader="False" Width="863px" BorderColor="White" BorderStyle="Ridge" CellSpacing="10" OnRowCommand="GridViewTransportBooking_RowCommand">
                                        <EmptyDataRowStyle ForeColor="White" />
                                        <PagerSettings PageButtonCount="5" />
                                        <Columns>
                                            <asp:ButtonField HeaderText="" Text="Cancel Booking" Visible="true" />
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
                            <tr>
                                <td style="width: 20px">&nbsp;&nbsp;</td>
                                <td>
                                    <asp:GridView ID="GridViewHotelBooking" runat="server" AutoGenerateColumns="False" EnableTheming="True" Height="223px"  PageSize="3" TabIndex="3" UseAccessibleHeader="False" Width="863px" BorderColor="White" BorderStyle="Ridge" CellSpacing="2" OnRowCommand="GridViewHotelBooking_RowCommand">
                                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                        <EmptyDataRowStyle ForeColor="White" />
                                        <PagerSettings PageButtonCount="5" />
                                        <Columns>
                                            <asp:ButtonField HeaderText="" Text="Cancel Booking" Visible="true" />
                                            <asp:BoundField DataField="H_Id" HeaderText="Hotel ID" />
                                            <asp:BoundField DataField="H_B_Id" HeaderText="Booking Id" />
                                            <asp:BoundField DataField="Room_Category" HeaderText="Room Type" />
                                            <asp:BoundField DataField="NoOfPerson" HeaderText="Person" />
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
                             <tr>
                                <td style="width: 20px">&nbsp;&nbsp;</td>
                                <td>
                                    <asp:GridView ID="GridViewHomestayBooking" runat="server" AutoGenerateColumns="False" EnableTheming="True" Height="223px"  PageSize="3" TabIndex="3" UseAccessibleHeader="False" Width="863px" BorderColor="White" BorderStyle="Ridge" CellSpacing="2" OnRowCommand="GridViewHomestayBooking_RowCommand">
                                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                        <EmptyDataRowStyle ForeColor="White" />
                                        <PagerSettings PageButtonCount="5" />
                                        <Columns>
                                            <asp:ButtonField HeaderText="" Text="Cancel Booking" Visible="true" />
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
                            <tr>
                                <td style="width: 20px; "></td>
                                <td>
                                    &nbsp;</td>
                            </tr>

                            <tr>
                                <td style="width: 20px; ">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>

                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    
</asp:Content>

