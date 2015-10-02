<%@ Page Language="C#" ValidateRequest="false" AutoEventWireup="true" CodeBehind="fromXSS.aspx.cs" Inherits="Xss.fromXSS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    enter your name here : <asp:TextBox ID="YourName" runat="server"></asp:TextBox>
        then click :
    <asp:Button ID="Button1" runat="server" Text="Ok" onclick="Button1_Click" />
        <br />

    <asp:Label ForeColor="Red" ID="Label1" runat="server" Text="welcome + your name will be here"></asp:Label>
        

    </form>
</body>
</html>
