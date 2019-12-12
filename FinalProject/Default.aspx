<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject.Default" %>
<%@ Register TagPrefix="cc" TagName="ImageControl" Src="~/Controls/ImageGrid.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    
    <form id="mainForm" runat="server">
        <header>
            <h1>Photo Gallery</h1>
        </header>
        <article>
            <cc:ImageControl runat="server" ID="MyImageGrid" />
        </article>
       
            <footer>
            Image Grid Sample &copy; 2013 - www.geekypedia.net - Om Talsania
        </footer>
    </form>

</asp:Content>