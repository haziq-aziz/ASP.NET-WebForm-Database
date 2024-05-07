<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4387.aspx.cs" Inherits="WebApplication3387.WebForm487" %>

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
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="IndexNo" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="IndexNo" HeaderText="IndexNo" InsertVisible="False" ReadOnly="True" SortExpression="IndexNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="ICNumber" HeaderText="ICNumber" SortExpression="ICNumber" />
                <asp:BoundField DataField="DateOfBirth" DataFormatString="{0:d MMM yyyy}" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="SexCode" HeaderText="SexCode" SortExpression="SexCode" />
                <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>
    </form>
</body>
</html>
