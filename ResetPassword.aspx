<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
    <br />
    <br />
    
        <div class="content" style="background-image: url('Images/slide2.jpg'); height: 550px;">
            <div class="container_12">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table style="width: 57%; height: auto; margin-left: 206px; background-color: black; border-radius: 20px; ">
                    <tr>
                        <td style="width: 54px">&nbsp;</td>
                        <td style="text-align: center;" colspan="3">
                            <br />
                            Reset Password</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 54px">&nbsp;</td>
                        <td style="width: 147px; color: #808080;">&nbsp;</td>
                        <td style="margin-left: 80px" colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 30px;"></td>
                        <td style="width: 147px; color: #808080; height: 30px;">Old Password</td>
                        <td style="margin-left: 80px; height: 30px;" colspan="2">
                            <asp:textbox id="TextBox3" runat="server" textmode="Password" tooltip="Insert Old Password" width="150px" border="none" outline="0" border-bottom="1px solid black" background="transparent"  >rpv</asp:textbox>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="TextBox3" errormessage="Insert Old Password" forecolor="#FC0000" setfocusonerror="True" ValidationGroup="rpv" >*</asp:requiredfieldvalidator>
                        </td>
                        <td style="height: 30px"></td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 29px;"></td>
                        <td style="width: 147px; color: #808080; height: 29px;">New Password</td>
                        <td colspan="2" style="height: 29px">
                            <asp:textbox id="TextBox1" runat="server" width="150px" tooltip="Insert New Pssword" border="none" outline="0" border-bottom="1px solid black" background="transparent" TextMode="Password" ValidationGroup="rpv"  ></asp:textbox>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="TextBox1" errormessage="Insert New Password" forecolor="#FC0000" setfocusonerror="True" ValidationGroup="rpv"  >*</asp:requiredfieldvalidator>
                        </td>
                        <td style="height: 29px"></td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 30px;"></td>
                        <td style="width: 147px; color: #808080; height: 30px;">Confirm New Passord </td>
                        <td colspan="2" style="height: 30px">
                            <asp:textbox id="TextBox2" runat="server" textmode="Password" tooltip="Insert Confirm Password" width="150px" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="rpv"  ></asp:textbox>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="TextBox2" errormessage="Insert Confirm new  Password" forecolor="#FC0000" setfocusonerror="True" ValidationGroup="rpv" >*</asp:requiredfieldvalidator>
                        </td>
                        <td style="height: 30px"></td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 38px;"></td>
                        <td style="width: 147px; color: #FC0000; height: 38px;">&nbsp;</td>
                        <td style="width: 87px; height: 38px;">
                            <asp:button id="Button1" runat="server" text="Submit" height="30px" width="65px" OnClick="Button1_Click" ValidationGroup="rpv" />
                        </td>
                        <td style="width: 216px; height: 38px;">&nbsp;</td>
                        <td style="height: 38px"></td>
                    </tr>
                    <tr>
                        <td style="width: 54px">&nbsp;</td>
                        <td style="width: 147px">&nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" ForeColor="#FC0000"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 54px">&nbsp;</td>
                        <td style="width: 147px">&nbsp;</td>
                        <td colspan="2">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
</asp:Content>

