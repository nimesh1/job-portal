<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="frmAdminLogin.aspx.cs" Inherits="Admin_frmAdminLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td align="center" style="width: 100px">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True"
                                        Font-Names="Verdana" Font-Size="Small" style="color:#244b8f">Home</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    
                        <div id="login-box">
                            <h2>
                                Login</h2>
                            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Purple"
                                        Width="274px"></asp:Label>
                            <br />
                            <br />
                            <div id="login-box-name" style="margin-top: 20px;">
                                User Name:</div>
                            <div id="login-box-field" style="margin-top: 20px;">
                                  <asp:TextBox ID="txtUserName" runat="server" ValidationGroup="g1"  CssClass="form-login"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                                        ErrorMessage="*" ForeColor="Purple" ValidationGroup="g1"></asp:RequiredFieldValidator></div>
                            <div id="login-box-name">
                                Password:</div>
                            <div id="login-box-field">
                                   <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ValidationGroup="g1"
                                        CssClass="form-login"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                                        ErrorMessage="*" ForeColor="Purple" ValidationGroup="g1"></asp:RequiredFieldValidator></div>
                            <br />                            
                                <asp:ImageButton ID="btnLogin" runat="server" ImageUrl="~/Images/login-btn.png" ValidationGroup="g1" OnClick="btnLogin_Click"/>
                                  <%--<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Log In"
                                        ValidationGroup="g1" Width="50px" />--%>
                        </div>
                   
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
</asp:Content>
