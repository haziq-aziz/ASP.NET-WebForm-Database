<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7387.aspx.cs" Inherits="WebApplication3387.WebForm7387" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" SelectCommand="SELECT * FROM [tblStudents]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IndexNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IndexNo" HeaderText="IndexNo" InsertVisible="False" ReadOnly="True" SortExpression="IndexNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                <asp:BoundField DataField="ICNumber" HeaderText="ICNumber" SortExpression="ICNumber" />
                <asp:BoundField DataField="DateOfBirth" DataFormatString="{0:d}" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="SexCode" HeaderText="SexCode" SortExpression="SexCode" />
                <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
                <asp:ImageField DataImageUrlField="IndexNo" DataImageUrlFormatString="Images/{0}.png" HeaderText="Photo">
                    <ControlStyle Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
