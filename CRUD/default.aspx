<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CRUD._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Welcome to Clockwork Campus Freelance<table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="394px" ImageUrl="images/clockwork2.jpg" Width="417px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <strong>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/jobpostings.aspx">Job Posting Form</asp:HyperLink>
                                </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/jobsearch.aspx">Search For Posted Jobs</asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
