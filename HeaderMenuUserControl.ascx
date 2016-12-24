<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderMenuUserControl.ascx.cs"
    Inherits="JobSeeker_UserControl_HeaderMenuUserControl" %>
<table border="0" cellpadding="0" cellspacing="0" style="font-weight: bold; background-color: #a82222;
    background-image: -webkit-linear-gradient(#a82222, #670000); background-image: -moz-linear-gradient(#a82222, #670000);
    background-image: -o-linear-gradient(#a82222, #670000); background-image: linear-gradient(#a82222, #670000);
    border-left: 1px solid #5f5f5f; border-right: 1px solid #7e0000; -webkit-transition: all 0.2s ease-in-out;
    -moz-transition: all 0.2s ease-in-out; -o-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out;
    color: #e3e7e3" width="100%">
    <tr>
        <td align="left" width="110px">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Style="display: block;
                text-decoration: none; color: white; text-transform: uppercase; padding: 0 10px;
                font-family: 'Verdana', arial; margin: 0; position: relative; font-size: 11px;
                line-height: 40px; font-weight: bold; color: White;">View Resume</asp:LinkButton>
        </td>
        <td align="left" width="167px">
            <asp:LinkButton ID="lnkProfileUpdate" runat="server" OnClick="lnkProfileUpdate_Click"
                Style="display: block; text-decoration: none; color: white; text-transform: uppercase;
                padding: 0 10px; font-family: 'Verdana', arial; margin: 0; position: relative;
                font-size: 11px; line-height: 40px; font-weight: bold; color: White;">Update Your Profile</asp:LinkButton>
        </td>
        <td align="left" style="width: 194px">
            <asp:LinkButton ID="lnkAccountUpdate" runat="server" OnClick="lnkAccountUpdate_Click"
                Style="display: block; text-decoration: none; color: white; text-transform: uppercase;
                padding: 0 10px; font-family: 'Verdana', arial; margin: 0; position: relative;
                font-size: 11px; line-height: 40px; font-weight: bold; color: White;">Update Account Profile</asp:LinkButton>
        </td>
        <td align="left" style="width: 253px">
            <asp:LinkButton ID="lnkTechnicalSkill" runat="server" OnClick="lnkTechnicalSkill_Click"
                Style="display: block; text-decoration: none; color: white; text-transform: uppercase;
                padding: 0 10px; font-family: 'Verdana', arial; margin: 0; position: relative;
                font-size: 11px; line-height: 40px; font-weight: bold; color: White;">Update Technical Skills Profile</asp:LinkButton>
        </td>
        <td align="left">
            <asp:LinkButton ID="lnkJob" runat="server" OnClick="lnkJob_Click" Style="display: block;
                text-decoration: none; color: white; text-transform: uppercase; padding: 0 10px;
                font-family: 'Verdana', arial; margin: 0; position: relative; font-size: 11px;
                line-height: 40px; font-weight: bold; color: White;">Update Job Profile</asp:LinkButton>
        </td>
        <td align="left">
            <asp:LinkButton ID="lnkEducation" runat="server" OnClick="lnkEducation_Click" Style="display: block;
                text-decoration: none; color: white; text-transform: uppercase; padding: 0 10px;
                font-family: 'Verdana', arial; margin: 0; position: relative; font-size: 11px;
                line-height: 40px; font-weight: bold; color: White;">Update Education Profile</asp:LinkButton>
        </td>
        <td align="left">
            <asp:LinkButton ID="lnkSearchJob" runat="server" OnClick="lnkSearchJob_Click" Style="display: block;
                text-decoration: none; color: white; text-transform: uppercase; padding: 0 10px;
                font-family: 'Verdana', arial; margin: 0; position: relative; font-size: 11px;
                line-height: 40px; font-weight: bold; color: White;">Search Jobs</asp:LinkButton>
        </td>
        <td align="left">
            <asp:LinkButton ID="lnkResponse" runat="server" Style="display: block; text-decoration: none;
                color: white; text-transform: uppercase; padding: 0 10px; font-family: 'Verdana', arial;
                margin: 0; position: relative; font-size: 11px; line-height: 40px; font-weight: bold;
                color: White;" OnClick="lnkResponse_Click">Response Detail</asp:LinkButton>
        </td>
    </tr>
</table>
