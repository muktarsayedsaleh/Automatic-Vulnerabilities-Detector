<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QsSqlInjection.aspx.cs" Inherits="Xss.QsSqlInjection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="recID" DataSourceID="SqlDataSource1" Width="573px">
            <Columns>
                <asp:BoundField DataField="recID" HeaderText="recID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="recID" />
                <asp:BoundField DataField="recName" HeaderText="recName" 
                    SortExpression="recName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TestSQLInjectionDBConnectionString %>" 
            SelectCommand="SELECT * FROM [table1]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
