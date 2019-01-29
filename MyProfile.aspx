<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <div class="content" style="background-image: url('Images/slide.jpg'); height:550px;">
        <div class="container_12">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />  
            <br />

            <table id="table1" style="width: 85%; height: auto; margin-left: 130px; background-color: black; border-radius: 20px; font-size: large;">
                <tr>
                    <td style="height: 35px; text-align: center; font-size: medium;" colspan="3">
                        <br />
                        User Details</td>
                    <td style="height: 35px; text-align: center; font-size: medium; width: 30%;">&nbsp;</td>
                    <td style="height: 35px; text-align: center; font-size: medium; width: 8%;">&nbsp;</td>
                    <td style="height: 35px; text-align: center; font-size: medium; width: 10%;">&nbsp;</td>
                    <td style="height: 35px; text-align: center; font-size: medium; width: 5%;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 9%; height: 35px;"></td>
                    <td style="width: 13%; height: 35px; text-align: left;"></td>
                    <td style="height: 35px; width: 86px;"></td>
                    <td style="height: 35px; width: 30%;">&nbsp;</td>
                    <td style="height: 35px; width: 8%;">&nbsp;</td>
                    <td style="height: 35px; width: 10%;">&nbsp;</td>
                    <td style="height: 35px; width: 5%;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 9%; height: 35px;"></td>
                    <td style="width: 13%; color: #808080; height: 35px; text-align: left;">Name :</td>
                    <td style="margin-left: 80px; height: 35px; width: 86px;">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td style="margin-left: 80px; height: 35px; width: 30%;">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td style="margin-left: 80px; height: 35px; width: 8%;">
                        <asp:Button ID="UpdatenameButton" runat="server" OnClick="UpdatenameButton_Click" Text="Update" />
                    </td>
                    <td style="margin-left: 80px; height: 35px; width: 10%;">
                        <asp:LinkButton ID="LinkButtonName" runat="server" OnClick="LinkButtonName_Click">Edit</asp:LinkButton>
                    </td>
                    <td style="margin-left: 80px; height: 35px; width: 5%;">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 9%; height: 35px;"></td>
                    <td style="width: 13%; color: #808080; height: 35px; text-align: left;">Gender :</td>
                    <td style="height: 35px; width: 86px;">
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                    <td style="height: 35px; width: 30%;">&nbsp;</td>
                    <td style="height: 35px; width: 8%;">&nbsp;</td>
                    <td style="height: 35px; width: 10%;">&nbsp;</td>
                    <td style="height: 35px; width: 5%;">&nbsp;</td>
                </tr>
               
                        <tr>
                            <td style="width: 9%; height: 35px;"></td>
                            <td style="width: 13%; color: #808080; height: 35px; text-align: left;">D.O.B :</td>
                            <td style="height: 35px; width: 86px;">
                                <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td style="height: 35px; width: 30%;">
                                &nbsp;</td>
                            <td style="height: 35px; width: 8%;">
                                &nbsp;</td>
                            <td style="height: 35px; width: 10%;">
                                &nbsp;</td>
                            <td style="height: 35px; width: 5%;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 9%; height: 35px;"></td>
                            <td style="width: 13%; color: #808080; height: 35px; text-align: left;">Mobile :</td>
                            <td style="height: 35px; width: 86px;">
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                            <td style="height: 35px; width: 30%;">
                                <asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
                            </td>
                            <td style="height: 35px; width: 8%;">
                                <asp:Button ID="UpdateMobileButton" runat="server" OnClick="UpdateMobileButton_Click" Text="Update" />
                            </td>
                            <td style="height: 35px; width: 10%;">
                                <asp:LinkButton ID="LinkButtonMOB" runat="server" OnClick="LinkButtonMOB_Click">Edit</asp:LinkButton>
                            </td>
                            <td style="height: 35px; width: 5%;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 9%; height: 38px;"></td>
                            <td style="width: 13%; color: #808080; height: 38px; text-align: left;">Address :</td>
                            <td style="height: 38px; width: 86px;">
                                <asp:Label ID="Label8" runat="server"></asp:Label>
                            </td>
                            <td style="height: 38px; width: 30%;">
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="146px"></asp:TextBox>
                            </td>
                            <td style="height: 38px; width: 8%;">
                                <asp:Button ID="UpdateEmailButton" runat="server" OnClick="UpdateEmailButton_Click" Text="Update" />
                            </td>
                            <td style="height: 38px; width: 10%;">
                                <asp:LinkButton ID="LinkButtonAddress" runat="server" OnClick="LinkButtonAddress_Click">Edit</asp:LinkButton>
                            </td>
                            <td style="height: 38px; width: 5%;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 9%; height: 35px;"></td>
                            <td style="width: 13%; color: #808080; height: 35px; text-align: left;">Email Id :</td>
                            <td style="height: 35px; width: 86px;">
                                <asp:Label ID="Label9" runat="server"></asp:Label>
                            </td>
                            <td style="height: 35px; width: 30%;">&nbsp;</td>
                            <td style="height: 35px; width: 8%;">&nbsp;</td>
                            <td style="height: 35px; width: 10%;">&nbsp;</td>
                            <td style="height: 35px; width: 5%;">&nbsp;</td>
                        </tr>
                    
                        <tr>
                            <td style="width: 9%; height: 35px;">&nbsp;</td>
                            <td style="width: 13%; color: #808080; height: 35px; text-align: left;">&nbsp;</td>
                            <td style="height: 35px; width: 86px;">
                                &nbsp;</td>
                            <td style="height: 35px; width: 30%;">
                                <asp:Label ID="Label10" runat="server" ForeColor="#FC0000"></asp:Label>
                            </td>
                            <td style="height: 35px; width: 8%;">&nbsp;</td>
                            <td style="height: 35px; width: 10%;">&nbsp;</td>
                            <td style="height: 35px; width: 5%;">&nbsp;</td>
                        </tr>
                    
            </table>
            </ContentTemplate>
                </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>

