﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="CancelationDetails.aspx.cs" Inherits="CancelationDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                            <td style="height: 94px;" colspan="2"></td>
                            <td style="height: 94px; font-size: medium; text-align: center;" colspan="5">
                                <br />
                                <asp:Label ID="titleLabel" runat="server">View Cancelation Details</asp:Label>
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
                            <td style="text-align: center; height: 61px;">To Date :</td>
                            <td colspan="2" style="height: 61px;">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" ValidationGroup="fbv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Insert Date" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="fbv">*</asp:RequiredFieldValidator>
                            </td>
                            <td colspan="2" style="height: 61px;">
                                <asp:Button ID="SearchButton2" runat="server" ForeColor="#00001A" Text="Search" Width="69px" ValidationGroup="fbv" OnClick="SearchButton2_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="height: 43px;">&nbsp;</td>
                            <td style="text-align: center; height: 43px;">&nbsp;</td>
                            <td colspan="2" style="height: 43px;">
                                <asp:Label ID="Label4" runat="server" ForeColor="#FC0000"></asp:Label>
                            </td>
                            <td colspan="2" style="height: 43px;">&nbsp;</td>
                        </tr>
                        <tr style="text-align: center;">
                            <td colspan="8" style="text-align: center;">
                                <asp:GridView ID="GridViewCancelationDetails" runat="server" AutoGenerateColumns="False" BorderColor="White" BorderStyle="Ridge"
                                    CellSpacing="2" EnableTheming="True" Height="216px" PageSize="3" TabIndex="3" UseAccessibleHeader="False" Width="863px" 
                                    AutoGenerateSelectButton="True" OnRowCommand="GridViewCancelationDetails_RowCommand" >
                                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                    <EmptyDataRowStyle ForeColor="White" />
                                    <PagerSettings PageButtonCount="5" />
                                    <Columns>

                                        <asp:BoundField DataField="CancelationId" HeaderText="Cancelation ID" />
                                        <asp:BoundField DataField="UserId" HeaderText="User ID" />
                                        <asp:BoundField DataField="BookingId" HeaderText="Booking ID" />
                                        <asp:BoundField DataField="Refund" HeaderText="Refund" />
                                        <asp:BoundField DataField="CancelationDate" HeaderText="Cancelation Date" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" />
                                    </Columns>
                                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Top" />
                                    <RowStyle VerticalAlign="Top" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr id="hiderow8" runat="server">
                            <td colspan="2">&nbsp;</td>
                            <td colspan="3">&nbsp;</td>
                            <td style="width: 207px" colspan="2">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

