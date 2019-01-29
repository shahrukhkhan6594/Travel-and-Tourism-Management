<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="SearchHomestayResort.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />


    <div class="content" style="background-image: url('Images/slide1.jpg'); height:600px;">
        <div class="container_12">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table style="width: 97%; height: auto; margin-left: 13px; background-color: black; border-radius: 20px">
                        <tr>
                            <td style="width: 31px; height: 59px;"></td>
                            <td style="height: 59px; text-align: center; font-size: medium;" colspan="6">
                                <br />
                                <asp:Label ID="titleLabel" runat="server"></asp:Label>
                            </td>
                            <td style="height: 59px"></td>
                        </tr>
                        <tr>
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 195px">&nbsp;</td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">&nbsp;</td>
                            <td style="width: 78px">&nbsp;</td>
                            <td style="width: 93px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow6"  runat="server">
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">Check In</td>
                            <td style="width: 195px">
                                <asp:TextBox ID="ChechkInTextBox" runat="server" TextMode="Date" Width="150px" ValidationGroup="shrv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ChechkInTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 83px">Chech Out</td>
                            <td style="width: 202px">
                                <asp:TextBox ID="CheckOutTextBox" runat="server" TextMode="Date" Width="150px" ValidationGroup="shrv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="CheckOutTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 78px">No. Person</td>
                            <td style="width: 93px">
                                <asp:TextBox ID="personTextBox" runat="server" Width="150px" ValidationGroup="shrv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="personTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 195px">&nbsp;</td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">&nbsp;</td>
                            <td style="width: 78px">&nbsp;</td>
                            <td style="width: 93px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">Country</td>
                            <td style="width: 195px">
                                <asp:DropDownList ID="DropDownCountry" runat="server" Height="22px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownCountry_SelectedIndexChanged" ValidationGroup="shrv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownCountry" ErrorMessage="Select Country" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv" InitialValue="Select Country">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 55px">City</td>
                            <td style="width: 202px">
                                <asp:DropDownList ID="DropDownCity" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="shrv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownCity" ErrorMessage="Select City" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv" InitialValue="Select City">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 78px">&nbsp;Category</td>
                            <td style="width: 93px">
                                <asp:DropDownList ID="DropdownCategory" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="shrv">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropdownCategory" ErrorMessage="Select Category" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv" InitialValue="Select Homestay and Resort">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 195px">&nbsp;</td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">&nbsp;</td>
                            <td style="width: 78px">&nbsp;</td>
                            <td style="width: 93px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow1" runat="server">
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">Type</td>
                            <td style="width: 195px">
                                <asp:DropDownList ID="DropDownListType" runat="server" Height="22px" Width="150px" ValidationGroup="shrv">
                                    <asp:ListItem>Select Type</asp:ListItem>
                                    <asp:ListItem>International</asp:ListItem>
                                    <asp:ListItem>Domestic</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListType" ErrorMessage="Select Type" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 55px">Name</td>
                            <td style="width: 202px">
                                <asp:TextBox ID="NameTextBox" runat="server" Height="20px" Width="150px" ValidationGroup="shrv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Insert Name" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 78px">Amount</td>
                            <td style="width: 93px">
                                <asp:TextBox ID="TextBoxAmount" runat="server" Height="20px" Width="150px" ValidationGroup="shrv"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxAmount" ErrorMessage="inset Amount" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxAmount" ForeColor="#FC0000" SetFocusOnError="True" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow2" runat="server">
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 195px">&nbsp;</td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">&nbsp;</td>
                            <td style="width: 78px">&nbsp;</td>
                            <td style="width: 93px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow3" runat="server">
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">Star</td>
                            <td style="width: 195px">
                                <asp:DropDownList ID="NameDropDownList" runat="server" Height="22px"  Width="150px" ValidationGroup="shrv">
                                    <asp:ListItem>Select Star</asp:ListItem>
                                    <asp:ListItem>*(One Star)</asp:ListItem>
                                    <asp:ListItem>**(Two Star)</asp:ListItem>
                                    <asp:ListItem>***(Three Star)</asp:ListItem>
                                    <asp:ListItem>****(Four Star)</asp:ListItem>
                                    <asp:ListItem>*****(Five Star)</asp:ListItem>
                                    <asp:ListItem>******(Six Star)</asp:ListItem>
                                    <asp:ListItem>*******(Seven Star)</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="NameDropDownList" ErrorMessage="select star" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="shrv">*</asp:RequiredFieldValidator>
                            </td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">&nbsp;</td>
                            <td style="width: 78px">Description</td>
                            <td style="width: 93px">
                                <asp:TextBox ID="DescTextBox" runat="server" TextMode="MultiLine" Width="150px" ValidationGroup="shrv"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr id="hiderow4" runat="server">
                            <td style="width: 31px; height: 29px;"></td>
                            <td style="width: 72px; height: 29px;"></td>
                            <td style="width: 195px; height: 29px;"></td>
                            <td style="width: 55px; height: 29px;"></td>
                            <td style="width: 202px; height: 29px;"></td>
                            <td style="width: 78px; height: 29px;"></td>
                            <td style="width: 93px; height: 29px;"></td>
                            <td style="height: 29px"></td>
                        </tr>
                        <tr>
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">
                                <asp:Button ID="Button1" runat="server" Height="25px" Text="Search" Width="69px" OnClick="Button1_Click" ValidationGroup="shrv" />
                            </td>
                            <td style="width: 195px">
                                <asp:Button ID="SubmitButton" runat="server" Height="25px" Text="Submit" Width="69px" OnClick="SubmitButton_Click" ValidationGroup="shrv" />
                            </td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">
                                <asp:Label ID="CmtLabel" runat="server" ForeColor="#FC0000"></asp:Label>
                            </td>
                            <td style="width: 78px">&nbsp;</td>
                            <td style="width: 93px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 195px">&nbsp;</td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">&nbsp;</td>
                            <td style="width: 78px">&nbsp;</td>
                            <td style="width: 93px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td colspan="8" style="text-align:center">
                                <asp:GridView ID="GridViewHomestay" runat="server" AutoGenerateColumns="False" EnableTheming="True" Height="303px"  PageSize="5" TabIndex="5" UseAccessibleHeader="False" Width="877px" CellPadding="2" CellSpacing="15" OnRowCommand="GridViewHomestay_RowCommand" AllowPaging="True" OnPageIndexChanging="GridViewHomestay_PageIndexChanging">
                                    <EmptyDataRowStyle ForeColor="White" />
                                    <PagerSettings PageButtonCount="5" />
                                    <Columns>
                                        <asp:ButtonField HeaderText="" Text="Select" Visible="false" CommandName="selectresort" />
                                        <asp:BoundField DataField="HR_Id" HeaderText="ID" />
                                        <asp:BoundField DataField="HR_Type" HeaderText="Type" />
                                        <asp:BoundField DataField="HR_Stars" HeaderText="Stars" />
                                        <asp:BoundField DataField="HR_Name" HeaderText="Name" />
                                        <asp:BoundField DataField="HR_Category" HeaderText="Category" />
                                        <asp:BoundField DataField="HR_Country" HeaderText="Country" />
                                        <asp:BoundField DataField="HR_City" HeaderText="City" />
                                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                        <asp:BoundField DataField="Description" HeaderText="Description" />
                                    </Columns>
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 31px">&nbsp;</td>
                            <td style="width: 72px">&nbsp;</td>
                            <td style="width: 195px">&nbsp;</td>
                            <td style="width: 55px">&nbsp;</td>
                            <td style="width: 202px">&nbsp;</td>
                            <td style="width: 78px">&nbsp;</td>
                            <td style="width: 93px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td colspan="8">
                                <asp:GridView ID="GridViewHomestayDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="2" 
                                    CellSpacing="15" EnableTheming="True" Height="303px"  PageSize="5" TabIndex="5" UseAccessibleHeader="False" Width="877px"
                                    OnRowCommand="GridViewHomestay_RowCommand"
                                     OnPageIndexChanging="GridViewHomestayDetails_PageIndexChanging">
                                    <EmptyDataRowStyle ForeColor="White" />
                                    <PagerSettings PageButtonCount="5" />
                                    <Columns>
                                        
                                        <asp:BoundField DataField="HR_Id" HeaderText="ID" />
                                        <asp:BoundField DataField="HR_Type" HeaderText="Type" />
                                        <asp:BoundField DataField="HR_Stars" HeaderText="Stars" />
                                        <asp:BoundField DataField="HR_Name" HeaderText="Name" />
                                        <asp:BoundField DataField="HR_Category" HeaderText="Category" />
                                        <asp:BoundField DataField="HR_Country" HeaderText="Country" />
                                        <asp:BoundField DataField="HR_City" HeaderText="City" />
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

