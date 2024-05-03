<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1387.aspx.cs" Inherits="WebApplication3387.WebForm1387" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConStudent %>" ProviderName="<%$ ConnectionStrings:ConStudent.ProviderName %>" SelectCommand="SELECT * FROM [tblStudents]"></asp:SqlDataSource>
        
    </form>
</body>
</html>
