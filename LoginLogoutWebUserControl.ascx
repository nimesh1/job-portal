<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LoginLogoutWebUserControl.ascx.cs" Inherits="Admin_User_Control_LoginLogoutWebUserControl" %>
<table>
    <tr>
        <td>
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Purple"
                Width="113px"></asp:Label></td>
        <td>
            &nbsp;<asp:LinkButton ID="lnkLogout" runat="server" Font-Bold="True" ForeColor="Purple"
                Width="81px" OnClick="lnkLogout_Click">LogOut</asp:LinkButton></td>
    </tr>
</table>
