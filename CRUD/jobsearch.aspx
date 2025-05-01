<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="jobsearch.aspx.cs" Inherits="CRUD.jobsearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="1190px">
                    <ItemTemplate>
                        title:
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                        <br />
                        description:
                        <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                        <br />
                        budget:
                        <asp:Label ID="budgetLabel" runat="server" Text='<%# Eval("budget") %>' />
                        <br />
                        deadline:
                        <asp:Label ID="deadlineLabel" runat="server" Text='<%# Eval("deadline") %>' />
                        <br />
                        created_at:
                        <asp:Label ID="created_atLabel" runat="server" Text='<%# Eval("created_at") %>' />
                        <br />
                        updated_at:
                        <asp:Label ID="updated_atLabel" runat="server" Text='<%# Eval("updated_at") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team8ConnectionString %>" SelectCommand="SELECT [title], [description], [budget], [deadline], [created_at], [updated_at] FROM [Jobs]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
