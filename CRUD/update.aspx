<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="CRUD.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style11 {
        width: 89%;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        height: 32px;
    }
    .auto-style14 {
        text-align: center;
    }
    .auto-style16 {
        width: 56px;
    }
    .auto-style17 {
        height: 32px;
        width: 56px;
    }
    .auto-style18 {
        width: 195px;
    }
    .auto-style19 {
        height: 32px;
        width: 195px;
    }
    .auto-style20 {
        height: 32px;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style11">
    <tr>
        <td class="auto-style12">Change?</td>
        <td class="auto-style12">CurrentValues</td>
        <td>&nbsp;</td>
        <td class="auto-style18">
            <asp:Label ID="lblNewValue" runat="server" Text="New Value"></asp:Label>
        </td>
        <td class="auto-style16">blank</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td class="auto-style18">&nbsp;</td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14">
            <asp:CheckBox ID="cbpassword" runat="server" OnCheckedChanged="cbpassword_CheckedChanged" />
&nbsp;Change Password</td>
        <td>
            <asp:Label ID="lblPassword" runat="server"></asp:Label>
        </td>
        <td>Password</td>
        <td class="auto-style18">
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style16">
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Label ID="lblPassC" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="auto-style18">
            <asp:TextBox ID="txtPassC" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
        <td class="auto-style16">
            <asp:CompareValidator ID="cvPasswords" runat="server" ControlToCompare="txtPassC" ControlToValidate="txtPassword" ErrorMessage="Passwords much match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style20">
            <asp:CheckBox ID="cbFname" runat="server" />
        </td>
        <td class="auto-style13">
            <asp:Label ID="lblFname" runat="server"></asp:Label>
        </td>
        <td class="auto-style13">First Name </td>
        <td class="auto-style19">
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style20">
            <asp:CheckBox ID="CheckBox2" runat="server" />
        </td>
        <td class="auto-style13">
            <asp:Label ID="lblLname" runat="server"></asp:Label>
        </td>
        <td class="auto-style13">Last Name </td>
        <td class="auto-style19">
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style12">
            <asp:CheckBox ID="CheckBox3" runat="server" />
        </td>
        <td>
            <asp:Label ID="lblYOB" runat="server"></asp:Label>
        </td>
        <td>Year of Birth</td>
        <td class="auto-style18">
            <asp:TextBox ID="txtYOB" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnUpdate" runat="server" Text="Update Information" Width="216px" OnClick="btnUpdate_Click" />
        </td>
        <td class="auto-style18">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString2 %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:Student4720ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Login] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @Email">
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
        </td>
        <td class="auto-style16">&nbsp;</td>
    </tr>
</table>
</asp:Content>
