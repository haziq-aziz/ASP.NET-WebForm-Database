<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8387.aspx.cs" Inherits="WebApplication3387.WebForm8387" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Search name: <asp:TextBox ID="txtSearchName" runat="server"></asp:TextBox>

        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" SelectCommand="SELECT * FROM [tblStudents] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSearchName" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IndexNo" DataSourceID="SqlDataSource1">
            <Columns>
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
