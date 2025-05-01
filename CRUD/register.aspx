<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="CRUD.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            height: 26px;
            text-align: right;
        }
        .auto-style11 {
            text-align: right;
            height: 35px;
        }
        .auto-style12 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">Welcome! Complete this form to register</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Confirm Email:</td>
            <td>
                <asp:TextBox ID="txtEmailC" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="cvEmail" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmailC" ErrorMessage="Emails must match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">Password:</td>
            <td class="auto-style12">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtPasswordC" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Passwords must match" ControlToCompare="txtPassword" ControlToValidate="txtPasswordC"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">First Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFname" runat="server" ErrorMessage="First name is required" ControlToValidate="txtFname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Last Name:</td>
            <td>
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLname" runat="server" ErrorMessage="Last name is required" ControlToValidate="txtLname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Year of Birth:</td>
            <td>
                <asp:TextBox ID="txtYOB" runat="server">YYYY</asp:TextBox>
                <asp:RegularExpressionValidator ID="revYOB" runat="server" ControlToValidate="txtYOB" EnableClientScript="False" ErrorMessage="Please use a four digit year" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
        </tr>
        <tr>
           <td class="auto-style1" colspan="2">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team8ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email" ProviderName="<%$ ConnectionStrings:S25Team8ConnectionString.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="Email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="LName" Type="String" />
                    <asp:Parameter Name="YOB" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter Name="Email" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="FName" Type="String" />
                    <asp:Parameter Name="LName" Type="String" />
                    <asp:Parameter Name="YOB" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
