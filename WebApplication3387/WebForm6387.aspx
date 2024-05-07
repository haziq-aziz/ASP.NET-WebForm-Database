<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6387.aspx.cs" Inherits="WebApplication3387.WebForm6387" %>

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
        <asp:DataList ID="DataList1" runat="server" DataKeyField="IndexNo" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                IndexNo:
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
                StateCode:
                <asp:Label ID="StateCodeLabel" runat="server" Text='<%# Eval("StateCode") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
