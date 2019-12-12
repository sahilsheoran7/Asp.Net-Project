<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditData.aspx.cs" Inherits="FinalProject.EditData" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <h3>We have found <asp:Label ID="lblcount" runat="server" CssClass="label"></asp:Label> records in our System</h3>
    <%--<div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>--%>
    <div class="col-sm-offset-3">
        <div class="form-group row col-sm-offset-1">
            <asp:Button ID="btnget" runat="server" Text="Get Details" CssClass="btn btn-primary col-sm-offset-1 col-sm-3 col-lg-3" Width="99px" OnClick="btnget_Click" />
        </div>
        <asp:Label ID="lblmessage" runat="server" CssClass="text-danger"></asp:Label>
        <div class="form-group col-sm-offset-1 col-sm-6">
            <asp:ListBox ID="lstcustomers" runat="server" CssClass="" Width="539px"></asp:ListBox>
        </div>
        <div class="col-sm-6">
            <asp:Button ID="btnnxt" runat="server"  CssClass="btn btn-primary" Text="Next" OnClick="btnnxt_Click" />
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [detail_id], [user_id], [type], [start_date], [end_date], [start_time], [end_time], [origin], [destination], [stay], [vehicle], [distance], [fare], [hours], [DA_rate], [DA], [DA_percent], [total] FROM [Details] WHERE ([user_id] = @user_id)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userid" Name="user_id" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        SelectCommand="SELECT [detail_id] FROM [Details] WHERE ([user_id] = @user_id)">
        <SelectParameters>
            <asp:SessionParameter SessionField="userid" Name="user_id" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
