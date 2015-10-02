<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Xss._Default" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to XSS Test 1 Site.
    </h2>
    <p>
        for the example we will consider the following links :
        <ul>
            <li>
                <a href="D2.aspx?item=example&item2=doNotKnow&msg=Hello World!">Internal Link 1 (XSS With query string)!</a>
            </li>
            <li>
                <a href="http://www.externalExSite.com/a.php?item=example&item2=doNotKnow&msg=Hello World!">External Link 1 (must be ignored)!</a>
            </li>
            <li>
                <a href="D3.aspx?item=example&item2=doNotKnow&msg=Hello World!">Internal Link 2 (no XSS)!</a>
            </li>
            <li>
                <a href="fromXSS.aspx">Internal Link 3 (XSS on the form input field)!</a>
            </li>
            <li>
                <a href="QsSqlInjection.aspx?p=1">Internal Link 4 (SQL Injection on Query Strings)!</a>
            </li>
            <li>
                <a href="fileViewer.aspx?filename=files/users/f1.txt">Internal Link 5 (Remote File Inclusion - RFI)!</a>
            </li>
            
        </ul>
    </p>
</asp:Content>
