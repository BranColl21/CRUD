<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="CRUD.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style11">
        <table class="auto-style12">
            <tr>
                <td>We hate to see you go..... but if you want to leave, type your email address below and press the little delete button</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnDeleteClick" runat="server" OnClick="Button1_Click" Text="Delete Account" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
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
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
