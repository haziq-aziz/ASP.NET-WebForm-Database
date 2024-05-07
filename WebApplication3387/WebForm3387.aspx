<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3387.aspx.cs" Inherits="WebApplication3387.WebForm3387" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" SelectCommand="SELECT tblStudents.IndexNo, tblStudents.Name, tblStudents.Email, tblStudents.StudentID, tblStudents.ICNumber, tblStudents.DateOfBirth, tblStudents.SexCode, tblSex.Sex FROM tblSex INNER JOIN tblStudents ON tblSex.SexCode = tblStudents.SexCode WHERE (tblStudents.SexCode = 'M') ORDER BY tblStudents.Name"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IndexNo" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <td runat="server" style="">IndexNo:
                    <asp:Label ID="IndexNoLabel" runat="server" Text='<%# Eval("IndexNo") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    StudentID:
                    <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                    <br />
                    ICNumber:
                    <asp:Label ID="ICNumberLabel" runat="server" Text='<%# Eval("ICNumber") %>' />
                    <br />
                    DateOfBirth:
                    <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                    <br />
                    SexCode:
                    <asp:Label ID="SexCodeLabel" runat="server" Text='<%# Eval("SexCode") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="">IndexNo:
                    <asp:Label ID="IndexNoLabel1" runat="server" Text='<%# Eval("IndexNo") %>' />
                    <br />
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    StudentID:
                    <asp:TextBox ID="StudentIDTextBox" runat="server" Text='<%# Bind("StudentID") %>' />
                    <br />
                    ICNumber:
                    <asp:TextBox ID="ICNumberTextBox" runat="server" Text='<%# Bind("ICNumber") %>' />
                    <br />
                    DateOfBirth:
                    <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                    <br />
                    SexCode:
                    <asp:TextBox ID="SexCodeTextBox" runat="server" Text='<%# Bind("SexCode") %>' />
                    <br />
                    Sex:
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    StudentID:
                    <asp:TextBox ID="StudentIDTextBox" runat="server" Text='<%# Bind("StudentID") %>' />
                    <br />
                    ICNumber:
                    <asp:TextBox ID="ICNumberTextBox" runat="server" Text='<%# Bind("ICNumber") %>' />
                    <br />
                    DateOfBirth:
                    <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                    <br />
                    SexCode:
                    <asp:TextBox ID="SexCodeTextBox" runat="server" Text='<%# Bind("SexCode") %>' />
                    <br />
                    Sex:
                    <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="">IndexNo:
                    <asp:Label ID="IndexNoLabel" runat="server" Text='<%# Eval("IndexNo") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    StudentID:
                    <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                    <br />
                    ICNumber:
                    <asp:Label ID="ICNumberLabel" runat="server" Text='<%# Eval("ICNumber") %>' />
                    <br />
                    DateOfBirth:
                    <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                    <br />
                    SexCode:
                    <asp:Label ID="SexCodeLabel" runat="server" Text='<%# Eval("SexCode") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" border="0" style="">
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </table>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="">IndexNo:
                    <asp:Label ID="IndexNoLabel" runat="server" Text='<%# Eval("IndexNo") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                    <br />
                    StudentID:
                    <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Eval("StudentID") %>' />
                    <br />
                    ICNumber:
                    <asp:Label ID="ICNumberLabel" runat="server" Text='<%# Eval("ICNumber") %>' />
                    <br />
                    DateOfBirth:
                    <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Eval("DateOfBirth") %>' />
                    <br />
                    SexCode:
                    <asp:Label ID="SexCodeLabel" runat="server" Text='<%# Eval("SexCode") %>' />
                    <br />
                    Sex:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
