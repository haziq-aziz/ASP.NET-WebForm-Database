<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9387.aspx.cs" Inherits="WebApplication3387.WebForm9387" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Filter by state: <br />
            <asp:DropDownList ID="ddlSearchState" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="State" DataValueField="StateCode">
            </asp:DropDownList>

        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IndexNo" DataSourceID="SqlDataSource2">
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
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" SelectCommand="SELECT * FROM [tblState] ORDER BY [State]"></asp:SqlDataSource>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" SelectCommand="SELECT * FROM [tblStudents] WHERE ([StateCode] = @StateCode) ORDER BY [Name]">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlSearchState" Name="StateCode" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </form>
</body>
</html>
