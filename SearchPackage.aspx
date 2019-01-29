<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="SearchPackage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <br />
    <br />
    <br />

    <div id="div1" runat="server">

        <div id="packdiv" runat="server" class="content" style="background-image: url('Images/slide1.jpg'); height:500px;">

            <div class="container_12">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table style="width: 97%; height: auto; margin-left: 11px; background-color: black; border-radius: 20px">
                            <tr>
                                <td style="width: 20px; height: 59px;">&nbsp;</td>
                                <td style="height: 59px; text-align: center; font-size: medium;" colspan="6">
                                    <br />
                                    <asp:Label ID="titleLabel" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20px">&nbsp;</td>
                                <td style="width: 72px">&nbsp;</td>
                                <td style="width: 22px">&nbsp;</td>
                                <td style="width: 47px">&nbsp;</td>
                                <td style="width: 94px">&nbsp;</td>
                                <td style="width: 78px">&nbsp;</td>
                                <td style="width: 98px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 20px">&nbsp;</td>
                                <td style="width: 72px">Country</td>
                                <td style="width: 18px">
                                    <asp:DropDownList ID="DropDownCountry" runat="server" Height="22px" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownCountry_SelectedIndexChanged" ValidationGroup="spv">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownCountry" ErrorMessage="Select Country" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select Country" ValidationGroup="spv">*</asp:RequiredFieldValidator>
                                </td>
                                <td style="width: 47px">City</td>
                                <td style="width: 94px">
                                    <asp:DropDownList ID="DropDownCity" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="spv">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownCity" ErrorMessage="Select City" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select City" ValidationGroup="spv">*</asp:RequiredFieldValidator>
                                </td>
                                <td style="width: 78px">Category</td>
                                <td style="width: 98px">
                                    <asp:DropDownList ID="DropdownCategory" runat="server" Height="22px" Width="150px" AutoPostBack="True" ValidationGroup="spv">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropdownCategory" ErrorMessage="Select Category" ForeColor="#FC0000" SetFocusOnError="True" InitialValue="Select Package" ValidationGroup="spv">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20px; height: 30px;">&nbsp;</td>
                                <td style="width: 72px; height: 30px;">&nbsp;</td>
                                <td style="width: 22px; height: 30px;">&nbsp;</td>
                                <td style="width: 47px; height: 30px;">&nbsp;</td>
                                <td style="width: 94px; height: 30px;">&nbsp;</td>
                                <td style="width: 78px; height: 30px;">&nbsp;</td>
                                <td style="width: 98px; height: 30px;">&nbsp;</td>
                            </tr>
                            <tr id="hiderow1" runat="server">
                                <td style="width: 20px; height: 30px;"></td>
                                <td style="width: 72px; height: 30px;">
                                    <asp:Label ID="typeLabel" runat="server" Text="Type"></asp:Label>
                                </td>
                                <td style="width: 22px; height: 30px;">
                                    <asp:DropDownList ID="DropDownListType" runat="server" Height="22px" Width="150px" ValidationGroup="spv">
                                        <asp:ListItem>Select Type</asp:ListItem>
                                        <asp:ListItem>International</asp:ListItem>
                                        <asp:ListItem>Domestic</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListType" ErrorMessage="Select Package TYpe" ForeColor="#FC0000" InitialValue="Select Type" SetFocusOnError="True" ValidationGroup="spv">*</asp:RequiredFieldValidator>
                                </td>
                                <td style="width: 47px; height: 30px;">
                                    <asp:Label ID="DaysLabel" runat="server" Text="Days"></asp:Label>
                                </td>
                                <td style="width: 94px; height: 30px;">
                                    <asp:TextBox ID="TextBoxDays" runat="server" Height="20px" Width="150px" ValidationGroup="spv" placeholder="00 Days"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxDays" ErrorMessage="Insert Days" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="spv">*</asp:RequiredFieldValidator>
                                </td>
                                <td style="width: 78px; height: 30px;">
                                    <asp:Label ID="AmtLabel" runat="server" Text="Amount"></asp:Label>
                                </td>
                                <td style="width: 98px; height: 30px;">
                                    <asp:TextBox ID="TextBoxAmount" runat="server" Height="20px" Width="150px" ValidationGroup="spv"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxAmount" ErrorMessage="Insert Amount" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="spv">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxAmount" ForeColor="#FC0000" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr id="hiderow2" runat="server">
                                <td style="width: 20px; height: 30px;">&nbsp;</td>
                                <td style="width: 72px; height: 30px;">&nbsp;</td>
                                <td style="width: 22px; height: 30px;">&nbsp;</td>
                                <td style="width: 47px; height: 30px;">&nbsp;</td>
                                <td style="width: 94px; height: 30px;">&nbsp;</td>
                                <td style="width: 78px; height: 30px;">&nbsp;</td>
                                <td style="width: 98px; height: 30px;">&nbsp;</td>
                            </tr>
                            <tr id="hiderow3" runat="server">
                                <td style="width: 20px; height: 30px;">&nbsp;</td>
                                <td style="width: 72px; height: 30px;">&nbsp;</td>
                                <td style="width: 22px; height: 30px;">
                                    <asp:Button ID="SubmitButton1" runat="server" Height="25px" OnClick="SubmitButton_Click" Text="Submit" Width="69px" ValidationGroup="spv" />
                                </td>
                                <td style="width: 47px; height: 30px;">&nbsp;</td>
                                <td style="width: 94px; height: 30px;">&nbsp;</td>
                                <td style="width: 78px; height: 30px;">
                                    <asp:Label ID="DescLabel" runat="server" Text="Description"></asp:Label>
                                </td>
                                <td style="width: 98px; height: 30px;">
                                    <asp:TextBox ID="TextBoxDesc" runat="server" TextMode="MultiLine" Width="150px" ValidationGroup="spv"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 20px">&nbsp;</td>
                                <td style="width: 72px">&nbsp;</td>
                                <td style="width: 22px">
                                    <asp:Button ID="SearchButton" runat="server" Height="25px" OnClick="Button1_Click" Text="Search" Width="69px" ValidationGroup="spv" />
                                    &nbsp;
                                </td>
                                <td style="width: 47px">&nbsp;</td>
                                <td style="width: 94px">
                                    <asp:Label ID="Label1" runat="server" ForeColor="#FC0000"></asp:Label>
                                </td>
                                <td style="width: 78px">&nbsp;</td>
                                <td style="width: 98px">&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 20px; height: 20px;"></td>
                                <td style="width: 72px; height: 20px;"></td>
                                <td style="width: 22px; height: 20px;"></td>
                                <td style="width: 47px; height: 20px;"></td>
                                <td style="width: 94px; height: 20px;"></td>
                                <td style="width: 78px; height: 20px;"></td>
                                <td style="width: 98px; height: 20px;"></td>
                            </tr>

                            <tr>
                                <td style="width: 20px">&nbsp;</td>
                                <td colspan="6">
                                    <asp:GridView ID="GridViewPackage" runat="server"
                                        Height="260px" PageSize="5" UseAccessibleHeader="False" Width="863px" TabIndex="5"
                                        EnableTheming="True" AutoGenerateColumns="False" OnRowCommand="GridViewPackage_RowCommand" AllowPaging="True" 
                                        OnPageIndexChanging="GridViewPackage_PageIndexChanging" HorizontalAlign="Center">
                                        <EmptyDataRowStyle ForeColor="White" />
                                        <PagerSettings PageButtonCount="5" />
                                        <Columns>
                                            <asp:ButtonField HeaderText="" Text="Select" Visible="false" CommandName="SelectPackage" />
                                            <asp:BoundField HeaderText="ID" DataField="P_Id" />
                                            <asp:BoundField HeaderText="Package Type" DataField="P_Type" />
                                            <asp:BoundField HeaderText="Category" DataField="P_Category" />
                                            <asp:BoundField HeaderText="Country" DataField="Country" />
                                            <asp:BoundField HeaderText="City" DataField="City" />
                                            <asp:BoundField HeaderText="Days" DataField="Days" />
                                            <asp:BoundField HeaderText="Amount" DataField="Amount" />
                                            <asp:BoundField HeaderText="Description" DataField="Description" />
                                        </Columns>
                                        <PagerStyle VerticalAlign="Top" />
                                    </asp:GridView>
                                </td>
                            </tr>

                            <tr>
                                <td style="width: 20px">&nbsp;</td>
                                <td colspan="6">&nbsp;</td>
                            </tr>

                            <tr>
                                <td style="width: 20px">&nbsp;</td>
                                <td colspan="6">
                                    <asp:GridView ID="GridViewPackageDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False" EnableTheming="True" Height="260px" HorizontalAlign="Center" PageSize="5" TabIndex="5" UseAccessibleHeader="False" Width="863px" OnPageIndexChanging="GridViewPackageDetails_PageIndexChanging">
                                        <EmptyDataRowStyle ForeColor="White" />
                                        <PagerSettings PageButtonCount="5" />
                                        <Columns>
                                           
                                            <asp:BoundField DataField="P_Id" HeaderText="ID" />
                                            <asp:BoundField DataField="P_Type" HeaderText="Package Type" />
                                            <asp:BoundField DataField="P_Category" HeaderText="Category" />
                                            <asp:BoundField DataField="Country" HeaderText="Country" />
                                            <asp:BoundField DataField="City" HeaderText="City" />
                                            <asp:BoundField DataField="Days" HeaderText="Days" />
                                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" />
                                        </Columns>
                                        <PagerStyle VerticalAlign="Top" />
                                    </asp:GridView>
                                </td>
                            </tr>

                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    
</asp:Content>

