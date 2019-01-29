<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="SearchHotel.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                            <td style="width: 59px; height: 59px;"></td>
                            <td style="height: 59px; text-align: center; font-size: medium;" colspan="6">
                                <br />
                                <asp:Label ID="titleLabel" runat="server"></asp:Label>
                            </td>
                            <td style="height: 59px"></td>
                        </tr>
                        <tr>
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 206px">&nbsp;</td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px">&nbsp;</td>
                            <td style="width: 108px">&nbsp;</td>
                            <td style="width: 138px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow6"  runat="server">
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">Check In</td>
                            <td style="width: 206px; text-align: left;">
                                <asp:TextBox ID="ChechkInTextBox" runat="server" TextMode="Date" Width="150px" ValidationGroup="shv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ChechkInTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 83px">Chech Out</td>
                            <td style="width: 218px; text-align: left;">
                                <asp:TextBox ID="CheckOutTextBox" runat="server" TextMode="Date" Width="150px" ValidationGroup="shv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="CheckOutTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 108px">No. Person</td>
                            <td style="width: 138px">
                                <asp:TextBox ID="personTextBox" runat="server" Width="150px" ValidationGroup="shv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="personTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 206px; text-align: left;">&nbsp;</td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px; text-align: left;">&nbsp;</td>
                            <td style="width: 108px">&nbsp;</td>
                            <td style="width: 138px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">Country</td>
                            <td style="width: 206px; text-align: left;">
                                <asp:DropDownList ID="DropDownCountry" runat="server" Height="22px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownCountry_SelectedIndexChanged" ValidationGroup="shv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownCountry" ErrorMessage="Select Country" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select Country" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 83px">City</td>
                            <td style="width: 218px; text-align: left;">
                                <asp:DropDownList ID="DropDownCity" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="shv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownCity" ErrorMessage="Select City" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shv" InitialValue="Select City">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 108px">Room Category</td>
                            <td style="width: 138px">
                                <asp:DropDownList ID="DropdownCategory" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="shv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropdownCategory" ErrorMessage="Select Room" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shv" InitialValue="Select Room">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 206px; text-align: left;">&nbsp;</td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px; text-align: left;">&nbsp;</td>
                            <td style="width: 108px">&nbsp;</td>
                            <td style="width: 138px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow1" runat="server">
                            <td style="width: 59px"></td>
                            <td style="width: 72px">Type</td>
                            <td style="width: 206px; text-align: left;">
                                <asp:DropDownList ID="typeDropDownList" runat="server" Height="22px"  Width="150px" ValidationGroup="shv">
                                    <asp:ListItem>Select Type</asp:ListItem>
                                    <asp:ListItem>International</asp:ListItem>
                                    <asp:ListItem>Domestic</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="typeDropDownList" ErrorMessage="Select Hotel Type" ForeColor="#FC0000" InitialValue="Select Type" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 83px">Star</td>
                            <td style="width: 218px; text-align: left;">
                                <asp:DropDownList ID="StarDropDownList" runat="server" Height="22px"  Width="150px" ValidationGroup="shv">
                                    <asp:ListItem>Select Star</asp:ListItem>
                                    <asp:ListItem>One Star</asp:ListItem>
                                    <asp:ListItem>Two Star</asp:ListItem>
                                    <asp:ListItem>Three Star</asp:ListItem>
                                    <asp:ListItem>Four Star</asp:ListItem>
                                    <asp:ListItem>Five Star</asp:ListItem>
                                    <asp:ListItem>Six Star</asp:ListItem>
                                    <asp:ListItem>Seven Star</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="StarDropDownList" ErrorMessage="Select Hotel Stars" ForeColor="#FC0000" InitialValue="Select Star" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 108px">Name</td>
                            <td style="width: 138px">
                                <asp:TextBox ID="NameTextBox" runat="server" Height="20px" Width="150px" ValidationGroup="shv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Insert Hotel Name" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                            </td>
                            <td></td>
                        </tr>
                        <tr id="hiderow2" runat="server">
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 206px; text-align: left;">&nbsp;</td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px">&nbsp;</td>
                            <td style="width: 108px">&nbsp;</td>
                            <td style="width: 138px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow3" runat="server">
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">Amount</td>
                            <td style="width: 206px; text-align: left;">
                                <asp:TextBox ID="AmtTextBox" runat="server" Height="20px" Width="150px" ValidationGroup="shv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="AmtTextBox" ErrorMessage="Insert Amount" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shv">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AmtTextBox" SetFocusOnError="True" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
                            </td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px">&nbsp;</td>
                            <td style="width: 108px">Description</td>
                            <td style="width: 138px">
                                <asp:TextBox ID="DescTextBox" runat="server" TextMode="MultiLine" Width="150px" ValidationGroup="shv"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow4" runat="server">
                            <td style="width: 59px; height: 29px;"></td>
                            <td style="width: 72px; height: 29px;"></td>
                            <td style="width: 206px; height: 29px;"></td>
                            <td style="width: 83px; height: 29px;"></td>
                            <td style="width: 218px; height: 29px;"></td>
                            <td style="width: 108px; height: 29px;"></td>
                            <td style="width: 138px; height: 29px;"></td>
                            <td style="height: 29px"></td>
                        </tr>
                        <tr>
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">
                                <asp:Button ID="Button1" runat="server" Height="25px" Text="Search" Width="69px" OnClick="Button1_Click" ValidationGroup="shv" />
                            </td>
                            <td style="width: 206px">
                                <asp:Button ID="SubmitButton" runat="server" Height="25px" Text="Submit" Width="69px" OnClick="SubmitButton_Click" ValidationGroup="shv" />
                            </td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px">
                                <asp:Label ID="cmtLabel" runat="server" ForeColor="#FC0000"></asp:Label>
                            </td>
                            <td style="width: 108px">&nbsp;</td>
                            <td style="width: 138px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 206px">&nbsp;</td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px">&nbsp;</td>
                            <td style="width: 108px">&nbsp;</td>
                            <td style="width: 138px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td colspan="8" style="text-align:center">
                                <asp:GridView ID="GridViewHotel" runat="server" AutoGenerateColumns="False" EnableTheming="True" Height="257px" OnRowCommand="GridViewHotel_RowCommand" PageSize="5" TabIndex="5" UseAccessibleHeader="False" Width="866px" AllowPaging="True" OnPageIndexChanging="GridViewHotel_PageIndexChanging">
                                    <EmptyDataRowStyle ForeColor="White" />
                                    <PagerSettings PageButtonCount="5" />
                                    <Columns>
                                        <asp:ButtonField HeaderText="" Text="Select" Visible="false" CommandName="selecthotel" />
                                        <asp:BoundField DataField="H_Id" HeaderText="ID" />
                                        <asp:BoundField DataField="H_Type" HeaderText="Type" />
                                        <asp:BoundField DataField="H_Stars" HeaderText="Stars" />
                                        <asp:BoundField DataField="H_Name" HeaderText="Name" />
                                        <asp:BoundField DataField="Room_Category" HeaderText="Room Type" />
                                        <asp:BoundField DataField="H_Country" HeaderText="Country" />
                                        <asp:BoundField DataField="H_City" HeaderText="City" />                                        
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 59px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 206px">&nbsp;</td>
                            <td style="width: 83px">&nbsp;</td>
                            <td style="width: 218px">&nbsp;</td>
                            <td style="width: 108px">&nbsp;</td>
                            <td style="width: 138px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td colspan="8">
                                <asp:GridView ID="GridViewHotelDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False" EnableTheming="True" 
                                    Height="257px" PageSize="5" TabIndex="5" UseAccessibleHeader="False" Width="866px" OnPageIndexChanging="GridViewHotelDetails_PageIndexChanging">
                                    <EmptyDataRowStyle ForeColor="White" />
                                    <PagerSettings PageButtonCount="5" />
                                    <Columns>
                                        <asp:ButtonField CommandName="selecthotel" HeaderText="" Text="Select" Visible="false" />
                                        <asp:BoundField DataField="H_Id" HeaderText="ID" />
                                        <asp:BoundField DataField="H_Type" HeaderText="Type" />
                                        <asp:BoundField DataField="H_Stars" HeaderText="Stars" />
                                        <asp:BoundField DataField="H_Name" HeaderText="Name" />
                                        <asp:BoundField DataField="Room_Category" HeaderText="Room Type" />
                                        <asp:BoundField DataField="H_Country" HeaderText="Country" />
                                        <asp:BoundField DataField="H_City" HeaderText="City" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>

                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>

