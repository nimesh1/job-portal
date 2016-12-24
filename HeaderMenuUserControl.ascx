<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderMenuUserControl.ascx.cs"
    Inherits="Admin_UserControl_HeaderMenuUserControl" %>
<table cellpadding="0" cellspacing="0" style="width: 100%; border: 1px; border-top-color: Purple;
    border-bottom-color: Purple; border-top-style: solid; border-bottom-style: solid">
    <tr>
        <td align="center">
            <asp:Menu ID="Menu1" runat="server" Font-Bold="True" Orientation="Horizontal" Style="font-weight: bold;
                background-color: #a82222; background-image: -webkit-linear-gradient(#a82222, #670000);
                background-image: -moz-linear-gradient(#a82222, #670000); background-image: -o-linear-gradient(#a82222, #670000);
                background-image: linear-gradient(#a82222, #670000); border-left: 1px solid #5f5f5f;
                border-right: 1px solid #7e0000; -webkit-transition: all 0.2s ease-in-out; -moz-transition: all 0.2s ease-in-out;
                -o-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out; color: #e3e7e3"
                Width="100%">
                <StaticMenuItemStyle ForeColor="White" />
                <Items>
                   
                    <asp:MenuItem NavigateUrl="~/Admin/frmAdminHome.aspx" Text="Home" Value="Home"  ></asp:MenuItem>
                  
                    <asp:MenuItem Text="Add" Value="Add">
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddCountry.aspx" Text="Country" Value="Country">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddState.aspx" Text="State" Value="State">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddLocation.aspx" Text="Location" Value="Location">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddExperience.aspx" Text="Experience" Value="Experience">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddFunctionalArea.aspx" Text="Functional Area"
                            Value="Functional Area"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddJobPost.aspx" Text="Job Type" Value="Job Type">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddQualification.aspx" Text="Qualification"
                            Value="Qualification"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/frmAddSkills.aspx" Text="Skills" Value="Skills">
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Jobseeker Reports" Value="View Reports">
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Jobseeker/frmViewRegisteredJobSeekerByDate.aspx"
                            Text="Registered Jobseeker" Value="Registered Jobseeker"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Jobseeker/frmJobSeekerResponseToRecruiter.aspx"
                            Text="Jobseeker Applied Jobs" Value="Jobseeker Applied Jobs"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem Text="Recruiter Reports" Value="Recruiter Reports">
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Recruiter/frmViewRegisteredRecruiterByDate.aspx"
                            Text="Registered Recruiter" Value="Registered Recruiter"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Admin/ViewReports/Recruiter/frmRecruiterResponseToJobSeeker.aspx"
                            Text="Recruiter Offered Jobs" Value="Recruiter Offered Jobs"></asp:MenuItem>
                    </asp:MenuItem>
                 
                </Items>
                <DynamicHoverStyle BackColor="Pink" />
                <StaticHoverStyle BackColor="#244b8f" />
            </asp:Menu>
        </td>
    </tr>
</table>
