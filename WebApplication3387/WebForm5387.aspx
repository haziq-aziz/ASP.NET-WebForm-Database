<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5387.aspx.cs" Inherits="WebApplication3387.WebForm5387" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" DeleteCommand="DELETE FROM [tblStudents] WHERE [IndexNo] = @IndexNo" InsertCommand="INSERT INTO [tblStudents] ([Name], [Email], [StudentID], [ICNumber], [DateOfBirth], [SexCode], [StateCode]) VALUES (@Name, @Email, @StudentID, @ICNumber, @DateOfBirth, @SexCode, @StateCode)" SelectCommand="SELECT * FROM [tblStudents]" UpdateCommand="UPDATE [tblStudents] SET [Name] = @Name, [Email] = @Email, [StudentID] = @StudentID, [ICNumber] = @ICNumber, [DateOfBirth] = @DateOfBirth, [SexCode] = @SexCode, [StateCode] = @StateCode WHERE [IndexNo] = @IndexNo">
            <DeleteParameters>
                <asp:Parameter Name="IndexNo" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="StudentID" Type="String" />
                <asp:Parameter Name="ICNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="SexCode" Type="String" />
                <asp:Parameter Name="StateCode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="StudentID" Type="String" />
                <asp:Parameter Name="ICNumber" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="SexCode" Type="String" />
                <asp:Parameter Name="StateCode" Type="String" />
                <asp:Parameter Name="IndexNo" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="IndexNo" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                IndexNo:
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
                StateCode:
                <asp:TextBox ID="StateCodeTextBox" runat="server" Text='<%# Bind("StateCode") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
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
                StateCode:
                <asp:TextBox ID="StateCodeTextBox" runat="server" Text='<%# Bind("StateCode") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                IndexNo:
                <asp:Label ID="IndexNoLabel" runat="server" Text='<%# Eval("IndexNo") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                StudentID:
                <asp:Label ID="StudentIDLabel" runat="server" Text='<%# Bind("StudentID") %>' />
                <br />
                ICNumber:
                <asp:Label ID="ICNumberLabel" runat="server" Text='<%# Bind("ICNumber") %>' />
                <br />
                DateOfBirth:
                <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# Bind("DateOfBirth") %>' />
                <br />
                SexCode:
                <asp:Label ID="SexCodeLabel" runat="server" Text='<%# Bind("SexCode") %>' />
                <br />
                StateCode:
                <asp:Label ID="StateCodeLabel" runat="server" Text='<%# Bind("StateCode") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
