<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FinalProject.home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div>
        <b>Trip Planner & Booking</b>
        <p>
            Planning for your next vacation or weekend getaway is easy when you book your next flight, hotel or car at Travelocity.ca. Whether you're on a budget or ready to splurge on that once-in-a-lifetime luxury experience, we have all the tools you need to create that perfect trip.
        </p>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Customer] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter SessionField="Username" Name="username" Type="String"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
