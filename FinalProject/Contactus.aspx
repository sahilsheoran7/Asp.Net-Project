<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="FinalProject.Contactus" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="container contact">
            <h3>How to Contact Us</h3>
            <p>If you ever have any questions or comments about our Website.<br/>please be sure to contact us in whatever way is most convenient for you</p>
        <div class="form-group row">
             <asp:Label ID="lblphone" runat="server" Text="Phone:" CssClass="col-form-label col-sm-3"></asp:Label>
            <p>1-800-555-0400 <br />Weekdays, At Any Time</p>
        </div>
       
        <div class="form-group row">
            <asp:Label ID="lblemail" runat="server" Text="Email:" CssClass="col-form-label col-sm-3"></asp:Label>
            <p><asp:HyperLink ID="link" runat="server" NavigateUrl="mailto:Sahil@worldtraveller.com" CssClass="label">Sahil@worldtraveller.com</asp:HyperLink></p>
        </div>
        
        <div class="form-group row">
            <asp:Label ID="lblfax" runat="server" Text="Fax:" CssClass="col-form-label col-sm-3"></asp:Label>
            <p>1-226-555-2732</p>
        </div>

        <div class="form-group row">
            <asp:Label ID="lbladdress" runat="server" Text="Address:" CssClass="col-form-label col-sm-3"></asp:Label>
            <p>World Traveller, Inc<br /> 1500 Kitchener <br />Ontario,Canada N2C 2P0</p>
        </div>
   </div>
</asp:Content>
