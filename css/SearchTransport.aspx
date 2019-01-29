<%@ Page Title="" Language="C#" MasterPageFile="~/GustMasterPage.master" AutoEventWireup="true" CodeFile="SearchTransport.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />


    <div class="content" style="background-image: url('Images/slide1.jpg'); height: 650px;">
        <div class="container_12">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table style="width: 97%; height: auto; margin-left: 13px; background-color: black; border-radius: 20px">
                        <tr>
                            <td style="width: 114px; height: 59px;"></td>
                            <td style="height: 59px; font-size: medium; text-align: center;" colspan="4">
                                <br />
                                <asp:Label ID="titleLabel" runat="server"></asp:Label>
                            </td>
                            <td style="height: 59px"></td>
                        </tr>
                        <tr>
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 114px; height: 22px;"></td>
                            <td style="width: 125px; height: 22px; text-align: left;">Date</td>
                            <td style="width: 294px; height: 22px; text-align: left;">

                                <asp:TextBox ID="TextBox1" runat="server" Height="16px" TextMode="Date" Width="145px" ValidationGroup="stv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Select Date" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 67px; height: 22px; text-align: left;">Category</td>
                            <td style="width: 202px; height: 22px; text-align: left;">
                                <asp:DropDownList ID="DropdownCategory" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="stv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropdownCategory" ErrorMessage="Select Category" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select Transport" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="height: 22px"></td>
                        </tr>
                        <tr>
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px; text-align: left;">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;To Country</td>
                            <td style="width: 294px; text-align: left;">
                                <asp:DropDownList ID="DropDownToCountry" runat="server" Height="22px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownToCountry_SelectedIndexChanged" ValidationGroup="stv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownToCountry" ErrorMessage="Select To Country" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select Country" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 67px; text-align: left;">To City</td>
                            <td style="width: 202px; text-align: left;">
                                <asp:DropDownList ID="DropDownToCity" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="stv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownToCity" ErrorMessage="Select To City" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select City" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px; text-align: left;">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">From Country</td>
                            <td style="width: 294px; text-align: left;">
                                <asp:DropDownList ID="DropDownFromCountry" runat="server" Height="22px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownFromCountry_SelectedIndexChanged" ValidationGroup="stv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownFromCountry" ErrorMessage="Select From Country" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select Country" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 67px; text-align: left;">From City</td>
                            <td style="width: 202px; text-align: left;">
                                <asp:DropDownList ID="DropDownFromCity" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="stv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownFromCity" ErrorMessage="Select From City" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select City" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px; text-align: left;">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow1" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">Name</td>
                            <td style="width: 294px; text-align: left;">
                                <asp:TextBox ID="NameTextBox" runat="server" Height="20px" Width="150px" ValidationGroup="stv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="NameTextBox" ErrorMessage="insertTransport Name" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 67px; text-align: left;">Type</td>
                            <td style="width: 202px; text-align: left;">
                                <asp:DropDownList ID="typeDropDownList" runat="server" Height="22px" Width="150px" ValidationGroup="stv">
                                    <asp:ListItem>Select Type</asp:ListItem>
                                    <asp:ListItem>International</asp:ListItem>
                                    <asp:ListItem>Domestic</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="typeDropDownList" ErrorMessage="Select Transport Type" ForeColor="#FC0000" InitialValue="Select Type" SetFocusOnError="True" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow2" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px; text-align: left;">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow3" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">Time</td>
                            <td style="width: 294px; text-align: left;">
                                <asp:TextBox ID="TimeTextBox" runat="server" Height="20px" Width="150px" placeholder="00:00" ValidationGroup="stv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TimeTextBox" ErrorMessage="Insert Time" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 67px; text-align: left;">Amount</td>
                            <td style="width: 202px; text-align: left;">
                                <asp:TextBox ID="AmtTextBox" runat="server" Height="20px" Width="150px" ValidationGroup="stv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="AmtTextBox" ErrorMessage="Insert Amount" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="AmtTextBox" ForeColor="#FC0000" SetFocusOnError="True" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow4" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow5" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">Description</td>
                            <td style="width: 294px; text-align: left;">
                                <asp:TextBox ID="DescTextBox" runat="server" TextMode="MultiLine" Width="150px" ValidationGroup="stv"></asp:TextBox>
                            </td>
                            <td style="width: 67px">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow6" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow7" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px; text-align: left;">No. of Person</td>
                            <td style="width: 294px; text-align: left;">
                                <asp:TextBox ID="personTextBox" runat="server" Height="20px" Width="150px" ValidationGroup="stv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="personTextBox" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="stv">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="personTextBox" ForeColor="#FC0000" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
                            </td>
                            <td style="width: 67px">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow8" runat="server">
                            <td style="width: 114px">&nbsp;</td>
                            <td style="width: 125px">&nbsp;</td>
                            <td style="width: 294px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px">&nbsp;</td>
                            <td style="width: 202px; text-align: left;">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 114px; height: 28px;"></td>
                            <td style="width: 125px; height: 28px;">
                                <asp:Button ID="Button1" runat="server" Height="28px" Text="Search" Width="69px" OnClick="Button1_Click" ValidationGroup="stv" />
                            </td>
                            <td style="width: 294px; height: 28px; text-align: left;">
                                <asp:Button ID="SubmitButton" runat="server" Height="28px" OnClick="SubmitButton_Click" Text="Submit" Width="69px" ValidationGroup="stv" />
                            </td>
                            <td style="width: 67px; height: 28px;">
                                <asp:Label ID="Label2" runat="server" ForeColor="#FC0000"></asp:Label>
                            </td>
                            <td style="width: 202px; height: 28px; text-align: left;"></td>
                            <td style="height: 28px"></td>
                        </tr>
                        <tr>
                            <td style="width: 114px; height: 28px;">&nbsp;</td>
                            <td style="width: 125px; height: 28px;">&nbsp;</td>
                            <td style="width: 294px; height: 28px; text-align: left;">&nbsp;</td>
                            <td style="width: 67px; height: 28px;">&nbsp;</td>
                            <td style="width: 202px; height: 28px; text-align: left;">&nbsp;</td>
                            <td style="height: 28px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6" style="text-align: center; margin-left: 80px;">
                                <asp:GridView ID="GridViewTransport" runat="server" Height="309px" PageSize="5" UseAccessibleHeader="False" Width="850px" TabIndex="5" EnableTheming="True" AutoGenerateColumns="False" CellPadding="0" CellSpacing="15" OnRowCommand="GridViewTransport_RowCommand" AllowPaging="True" OnPageIndexChanging="GridViewTransport_PageIndexChanging">
                                    <EditRowStyle Width="10px" />
                                    <EmptyDataRowStyle ForeColor="White" />
                                    <PagerSettings PageButtonCount="5" />
                                    <Columns>
                                        <asp:ButtonField HeaderText="" Text="Select" Visible="false" CommandName="selecttransport" />
                                        <asp:BoundField DataField="T_Id" HeaderText="ID" />
                                        <asp:BoundField DataField="T_Type" HeaderText="Type" />
                                        <asp:BoundField DataField="T_Name" HeaderText="Name" />
                                        <asp:BoundField DataField="T_Category" HeaderText="Category" />
                                        <asp:BoundField DataField="To_Country" HeaderText="To Cokl/?Yuntry" />
                                        <asp:BoundField DataField="To_City" HeaderText="To City" />
                                        <asp:BoundField DataField="From_Country" HeaderText="From Country" />
                                        <asp:BoundField DataField="from_City" HeaderText="From City" />

                                        <asp:BoundField DataField="Time" HeaderText="Time" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" style="text-align: center; margin-left: 80px;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="6" style="text-align: center; margin-left: 80px;">

                                <asp:GridView ID="GridViewTransportDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="0"
                                    CellSpacing="15" EnableTheming="True" Height="309px" TabIndex="5" UseAccessibleHeader="False" Width="850px" 
                                    PageSize="5" OnPageIndexChanging="GridViewTransportDetails_PageIndexChanging" >
                                    <EditRowStyle Width="10px" />
                                    <EmptyDataRowStyle ForeColor="White" />
                                    <PagerSettings PageButtonCount="5" />
                                    <Columns>
                                        
                                        <asp:BoundField DataField="T_Id" HeaderText="ID" />
                                        <asp:BoundField DataField="T_Type" HeaderText="Type" />
                                        <asp:BoundField DataField="T_Name" HeaderText="Name" />
                                        <asp:BoundField DataField="T_Category" HeaderText="Category" />
                                        <asp:BoundField DataField="To_Country" HeaderText="To Cokl/?Yuntry" />
                                        <asp:BoundField DataField="To_City" HeaderText="To City" />
                                        <asp:BoundField DataField="From_Country" HeaderText="From Country" />
                                        <asp:BoundField DataField="from_City" HeaderText="From City" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" />
                                        <asp:BoundField DataField="Time" HeaderText="Time" />                                   
                                        
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" />
                                    </Columns>
                                </asp:GridView>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="6" style="text-align: center; margin-left: 80px;">&nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

</asp:Content>

