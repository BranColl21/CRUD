<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="CRUD.success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">Welcome
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                , you have successfully logged in!!!</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
&nbsp;
</asp:Content>
