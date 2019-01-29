<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />



    <div class="content" style="background-image: url('Images/slide2.jpg'); height: auto">
        <div class="container_12">
            <br />
            <br />

            <table id="table1"style="width: 45%; height: auto; margin-left: 267px; background-color: black; border-radius: 20px">
                <tr>
                    <td style="height: 35px; text-align: center; font-size: medium;" colspan="3">
                        <br />
                        Registration</td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; height: 35px;"></td>
                    <td style="height: 35px"></td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">First Name</td>
                    <td style="margin-left: 80px; height: 35px;">
                        <asp:TextBox ID="TextBox3" runat="server" Width="150px" ToolTip="Insert First Name" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="suv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Insert First Name" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">Last Name</td>
                    <td style="height: 35px">
                        <asp:TextBox ID="TextBox1" runat="server" Width="150px" ToolTip="Insert Last Name" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="suv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Insert Last Name" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ForeColor="#FC0000" SetFocusOnError="True" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">Gender</td>
                    <td style="height: 35px">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="150px" ValidationGroup="suv" ToolTip="Select Gender">
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Select Gender" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">D.O.B</td>
                    <td style="height: 35px">
                        <input type="date" id="date" runat="server" height="18" validationgroup="suv" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="date" ErrorMessage="Insert D.O.B" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">Mobile</td>
                    <td style="height: 35px">
                        <asp:TextBox ID="TextBox2" runat="server" MaxLength="12" ToolTip="Insert Mobile Number" Width="150px" Height="18px" ValidationGroup="suv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Insert Mobile Number" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="#FC0000" SetFocusOnError="True" ValidationExpression="\d+">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 50px;"></td>
                    <td style="width: 147px; color: #808080; height: 50px;">Address</td>
                    <td style="height: 50px">
                        <asp:TextBox ID="TextBox6" runat="server" Width="150px" ToolTip="Insert Residential Address" border="none" outline="0" border-bottom="1px solid black" background="transparent" TextMode="MultiLine" ValidationGroup="suv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Insert Adderss" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">Email Id</td>
                    <td style="height: 35px">
                        <asp:TextBox ID="TextBox7" runat="server" Width="150px" ToolTip="Insert Email Id" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="suv"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Insert Correct Email Id" ForeColor="#FC0000" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="suv">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox7" ErrorMessage="Inset Email ID" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">Create User Id</td>
                    <td style="height: 35px">
                        <asp:TextBox ID="TextBox8" runat="server" Width="150px" ToolTip="Create User Id" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="suv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="Create User Id" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 35px;"></td>
                    <td style="width: 147px; color: #808080; height: 35px;">Create Password</td>
                    <td style="height: 35px">
                        <asp:TextBox ID="TextBox9" runat="server" Width="150px" ToolTip="Create  Password" border="none" outline="0" border-bottom="1px solid black" background="transparent" TextMode="Password" ValidationGroup="suv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="Create Password" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 52px;"></td>
                    <td style="width: 147px; color: #808080; height: 52px;">Confirm Password</td>
                    <td style="height: 52px">
                        <asp:TextBox ID="TextBox10" runat="server" Width="150px" ToolTip=" Again Insert  Password" border="none" outline="0" border-bottom="1px solid black" background="transparent" TextMode="Password" ValidationGroup="suv"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10" ErrorMessage="Insert Confirm Password" ForeColor="#FC0000" SetFocusOnError="True" ValidationGroup="suv">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 45px;"></td>
                    <td style="width: 147px; text-align: center; height: 45px;">
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="suv" /></td>
                    <td style="height: 45px; text-align: center;">
                       <%--<input type="reset" id="reset1" runat="server" style="width: 61px"26"; />--%>
                        <input type="reset" ID="Button2" runat="server" Height="26px" Text="Reset" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 55px; height: 30px;">&nbsp;</td>
                    <td style="text-align: center; height: 30px;" colspan="2">
                        <asp:Label ID="Label1" runat="server" ForeColor="#FC0000"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td style="width: 55px; height: 30px;">&nbsp;</td>
                    <td style="text-align: center; height: 30px;" colspan="2">Already have an account ? <a href="SignIn.aspx" style="color: #FC0000">SignIn</a><br />
                    </td>
                </tr>

                <tr>
                    <td style="width: 55px; height: 30px;">&nbsp;</td>
                    <td style="text-align: center; height: 30px;" colspan="2">&nbsp;</td>
                </tr>

            </table>
        </div>
    </div>


</asp:Content>

