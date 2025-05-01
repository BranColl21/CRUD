<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="jobpostings.aspx.cs" Inherits="CRUD.jobpostings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            margin-left: 0px;
            margin-right: 0px;
        }
        .auto-style5 {
            text-align: center;
            width: 718px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style7 {
            text-align: center;
            width: 718px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">
                <br />
                <br />
                Job Posting Form </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtTitle" runat="server"  Width="225px"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="Need Title"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Description:&nbsp; <asp:TextBox ID="txtDesc" runat="server" CssClass="auto-style4" Height="22px" Width="226px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc" ErrorMessage="Need Description"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Budget:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtBudget" runat="server" Width="225px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBudget" ErrorMessage="Need Budget"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Deadline:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDeadline" runat="server" Width="224px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDeadline" ErrorMessage="Need Deadline"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                <br />
                After your job is submitted you will be directed to the job search page</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team8ConnectionString %>" DeleteCommand="DELETE FROM [Jobs] WHERE [job_id] = @job_id" InsertCommand="INSERT INTO [Jobs] ([title], [description], [budget], [deadline], [created_at], [updated_at]) VALUES (@title, @description, @budget, @deadline, @created_at, @updated_at)" SelectCommand="SELECT * FROM [Jobs] WHERE ([job_id] = @job_id)" UpdateCommand="UPDATE [Jobs] SET [title] = @title, [description] = @description, [budget] = @budget, [deadline] = @deadline, [created_at] = @created_at, [updated_at] = @updated_at WHERE [job_id] = @job_id">
                    <DeleteParameters>
                        <asp:Parameter Name="job_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="budget" Type="String" />
                        <asp:Parameter Name="deadline" Type="String" />
                        <asp:Parameter Name="created_at" Type="DateTime" />
                        <asp:Parameter Name="updated_at" Type="DateTime" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="job_id" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter Name="budget" Type="String" />
                        <asp:Parameter Name="deadline" Type="String" />
                        <asp:Parameter Name="created_at" Type="DateTime" />
                        <asp:Parameter Name="updated_at" Type="DateTime" />
                        <asp:Parameter Name="job_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
