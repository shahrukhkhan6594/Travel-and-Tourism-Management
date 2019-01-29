<%@ Page Title="" Language="C#" MasterPageFile="~/GuestMasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                            <span style="font-size: medium; text-align: center">Sign In</span></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 54px">&nbsp;</td>
                        <td style="width: 147px; color: #808080;">&nbsp;</td>
                        <td style="margin-left: 80px" colspan="2">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 50px;"></td>
                        <td style="width: 147px; color: #808080; height: 50px;">User Id</td>
                        <td colspan="2" style="height: 50px">
                            <asp:textbox id="TextBox1" runat="server" width="150px" tooltip="Insert User Id" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="siv"  ></asp:textbox>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="TextBox1" errormessage="Insert User Id" forecolor="#FC0000" setfocusonerror="True" ValidationGroup="siv"  >*</asp:requiredfieldvalidator>
                        </td>
                        <td style="height: 50px"></td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 49px;"></td>
                        <td style="width: 147px; color: #808080; height: 49px;">Password</td>
                        <td colspan="2" style="height: 49px">
                            <asp:textbox id="TextBox2" runat="server" textmode="Password" tooltip="Insert Password" width="150px" border="none" outline="0" border-bottom="1px solid black" background="transparent" ValidationGroup="siv"  ></asp:textbox>
                            <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="TextBox2" errormessage="Insert Password" forecolor="#FC0000" setfocusonerror="True" ValidationGroup="siv" >*</asp:requiredfieldvalidator>
                        </td>
                        <td style="height: 49px"></td>
                    </tr>
                    <tr>
                        <td style="width: 54px; height: 50px;"></td>
                        <td style="width: 147px; color: #FC0000; height: 50px;"><a href="ForgotPassword.aspx">Forgot Passsword</a></td>
                        <td style="width: 87px; height: 50px;">
                            <asp:button id="Button1" runat="server" text="Sign In" height="30px" width="65px" OnClick="Button1_Click" ValidationGroup="siv" />
                        </td>
                        <td style="width: 216px; height: 50px;">&nbsp;Have an new account ?<a href="SignUp.aspx" style="color: #FC0000">&nbsp;SignUp</a></td>
                        <td style="height: 50px"></td>
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
                            <asp:HiddenField ID="HiddenFieldPwd" runat="server" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
    
</asp:Content>

