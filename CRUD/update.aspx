<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="CRUD.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* (same styling kept) */
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style11">
        Use text boxes to indicate what you need to update
    </p>
    <p class="auto-style11">
        Hit the update info button to confirm these changes.</p>
    <p class="auto-style11">
        Click the update tab to refresh and see your changes.</p>
    <table class="auto-style12">
        <tr>
            <td class="auto-style23">Update Info</td>
            <td class="auto-style16">Current Value</td>
            <td class="auto-style17">
                <asp:Label ID="lblNewValue" runat="server" Text="New Value"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:CheckBox ID="cbEmail" runat="server" AutoPostBack="True" OnCheckedChanged="cbEmail_CheckedChanged" />
            </td>
            <td class="auto-style16">Email:<asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:CheckBox ID="cbPassword" runat="server" AutoPostBack="True" OnCheckedChanged="cbPassword_CheckedChanged" />
            </td>
            <td class="auto-style16">Password:<asp:Label ID="lblPassword" runat="server"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator">Password required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style17">
                <asp:Label ID="lblPasswordC" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="txtPasswordC" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordC" ErrorMessage="CompareValidator">Passwords must match</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:CheckBox ID="cbFname" runat="server" AutoPostBack="True" OnCheckedChanged="cbFname_CheckedChanged" />
            </td>
            <td class="auto-style16">First Name:<asp:Label ID="lblFname" runat="server"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFname" ErrorMessage="First name required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:CheckBox ID="cbLname" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged" />
            </td>
            <td class="auto-style20">Last Name:<asp:Label ID="lblLname" runat="server"></asp:Label>
&nbsp;</td>
            <td class="auto-style21">
                <asp:TextBox ID="txtLname" runat="server" ></asp:TextBox>
            </td>
            <td class="auto-style22">
                <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLname" ErrorMessage="Last name required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:CheckBox ID="cbYOB" runat="server" AutoPostBack="True" OnCheckedChanged="cbYOB_CheckedChanged" />
            </td>
            <td class="auto-style16">YOB:<asp:Label ID="lblYOB" runat="server"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="txtYOB" runat="server">YYYY</asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="revYOB" runat="server" ControlToValidate="txtYOB" ErrorMessage="Year of birth required" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        </table>
<p>
    <asp:Label ID="lblStatus" runat="server"></asp:Label>
</p>
<table class="auto-style12">
        <tr>
            <td class="auto-style18">
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team8ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
                <asp:Button ID="btnUpdate" runat="server" Text="Update Info" OnClick="btnUpdate_Click" />
                </td>
                <td class="auto-style11">
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" Width="71px" />
        </td>
    </tr>
</table>
</asp:Content>
