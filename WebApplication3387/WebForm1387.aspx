<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1387.aspx.cs" Inherits="WebApplication3387.WebForm1387" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" SelectCommand="SELECT * FROM [tblStudents]" DeleteCommand="DELETE FROM [tblStudents] WHERE [IndexNo] = @IndexNo" InsertCommand="INSERT INTO [tblStudents] ([Name], [Email], [StudentID], [ICNumber], [DateOfBirth], [SexCode], [StateCode]) VALUES (@Name, @Email, @StudentID, @ICNumber, @DateOfBirth, @SexCode, @StateCode)" UpdateCommand="UPDATE [tblStudents] SET [Name] = @Name, [Email] = @Email, [StudentID] = @StudentID, [ICNumber] = @ICNumber, [DateOfBirth] = @DateOfBirth, [SexCode] = @SexCode, [StateCode] = @StateCode WHERE [IndexNo] = @IndexNo">
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
        
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IndexNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IndexNo" HeaderText="IndexNo" InsertVisible="False" ReadOnly="True" SortExpression="IndexNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="ICNumber" HeaderText="ICNumber" SortExpression="ICNumber" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="SexCode" HeaderText="SexCode" SortExpression="SexCode" />
                <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
            </Columns>
        </asp:GridView>
        
    </form>
</body>
</html>
