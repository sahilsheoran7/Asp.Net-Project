<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditDetails.aspx.cs" Inherits="FinalProject.EditDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div>
    <h1>Edit information </h1>
    <asp:Label ID="lblerr" runat="server" CssClass="label"></asp:Label>
        <br />
        <div class="col-sm-8 col-sm-offset-0 ">
        <div class="row col-sm-offset-3">
            <asp:RadioButtonList ID="rdloptions" CssClass="options" runat="server" ValidationGroup="one" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rdloptions_SelectedIndexChanged">
                <asp:ListItem Value="Tour">Tour</asp:ListItem>
                <asp:ListItem Value="Office">Office</asp:ListItem>
                <asp:ListItem Value="Holiday">Holiday</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvradio" runat="server" ControlToValidate="rdloptions"
                Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div class="row">
            <div class=" col-sm-6 col-sm-offset-1">
                <asp:Label ID="lblstart" runat="server" Text="Start Date" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtdate" CssClass="form-control" runat="server" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvdate" runat="server" ControlToValidate="txtdate" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div class=" col-sm-offset-3 col-sm-6">
                <asp:Label ID="lblend" runat="server" Text="End Date" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtedate" runat="server" CssClass="form-control" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvedate" runat="server" ControlToValidate="txtedate" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>

            </div>
        </div>
        <div class="row">
            <div class=" col-sm-6 col-sm-offset-1">
                <asp:Label ID="lblstime" runat="server" Text="Start Time" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtstime" TextMode="Time" CssClass="form-control" runat="server" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvstime" runat="server" ControlToValidate="txtstime" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div class=" col-sm-offset-3 col-sm-6">
                <asp:Label ID="lbletime" runat="server" Text="End Time" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtetime" runat="server" CssClass="form-control" TextMode="Time" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvetime" runat="server" ControlToValidate="txtetime" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class=" col-sm-6 col-sm-offset-1">
                <asp:Label ID="lblfrom" runat="server" Text="From" CssClass="label"></asp:Label>
                <asp:DropDownList ID="ddlfrom" CssClass="form-control" runat="server" ValidationGroup="one">
                    <asp:ListItem Value="Select">Select</asp:ListItem>
                    <asp:ListItem Value="Kitchener">Kitchener</asp:ListItem>
                    <asp:ListItem Value="Waterloo">Waterloo</asp:ListItem>
                    <asp:ListItem Value="Scarborough" >Scarborough</asp:ListItem>
                    <asp:ListItem Value="Cambridge">Cambridge</asp:ListItem>
                    <asp:ListItem Value="Guelph">Guelph</asp:ListItem>
                    <asp:ListItem Value="Toronto">Toronto</asp:ListItem>
                    <asp:ListItem Value="Montrel">Montrel</asp:ListItem>
                    <asp:ListItem Value="NorthBay">NorthBay</asp:ListItem>
                    <asp:ListItem Value="ThunderBay">ThunderBay</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvfrom" runat="server" ControlToValidate="ddlfrom" 
                    Text="*" CssClass="text-danger" Display="Dynamic" ValueToCompare="Select"
                    Operator="NotEqual" Type="String" ValidationGroup="one"></asp:CompareValidator>
            </div>
            <div class=" col-sm-offset-3 col-sm-6">
                <asp:Label ID="lblto" runat="server" Text="To" CssClass="label"></asp:Label>
                <asp:DropDownList ID="ddlto" CssClass="form-control" runat="server" ValidationGroup="one">
                     <asp:ListItem Value="Select">Select</asp:ListItem>
                    <asp:ListItem Value="Kitchener">Kitchener</asp:ListItem>
                    <asp:ListItem Value="Waterloo">Waterloo</asp:ListItem>
                    <asp:ListItem Value="Scarborough" >Scarborough</asp:ListItem>
                    <asp:ListItem Value="Cambridge">Cambridge</asp:ListItem>
                    <asp:ListItem Value="Guelph">Guelph</asp:ListItem>
                    <asp:ListItem Value="Toronto">Toronto</asp:ListItem>
                    <asp:ListItem Value="Montrel">Montrel</asp:ListItem>
                    <asp:ListItem Value="NorthBay">NorthBay</asp:ListItem>
                    <asp:ListItem Value="ThunderBay">ThunderBay</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvto" runat="server" ControlToValidate="ddlto" 
                    Text="*" CssClass="text-danger" Display="Dynamic" ValueToCompare="Select"
                    Operator="NotEqual" Type="String" ValidationGroup="one"></asp:CompareValidator>
            </div>
         </div> 
        <br />
        <div class="row">
            <div class="col-sm-6 col-sm-offset-1">
                <asp:Label ID="lblStay" runat="server" Text="Stay" CssClass="label"></asp:Label>
                <asp:DropDownList ID="ddlstay" runat="server" CssClass="form-control" ValidationGroup="one">
                    <asp:ListItem Value="Select">Select</asp:ListItem>
                    <asp:ListItem Value="Hotel">Hotel</asp:ListItem>
                    <asp:ListItem Value="One Star Hotel">One Star Hotel</asp:ListItem>
                    <asp:ListItem Value="Two Star Hotel">Two Star Hotel</asp:ListItem>
                    <asp:ListItem Value="Five Star Hotel">Five Star Hotel</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvstay" runat="server" ControlToValidate="ddlstay" 
                    Text="*" CssClass="text-danger" Display="Dynamic" ValueToCompare="Select"
                    Operator="NotEqual" Type="String" ValidationGroup="one"></asp:CompareValidator>
            </div>
            <div class="col-sm-offset-0 col-sm-6">
                <asp:Label ID="lblvehicle" runat="server" Text="Vehicle" CssClass="label"></asp:Label>
                <asp:DropDownList ID="ddlvehicle" runat="server" CssClass="form-control" ValidationGroup="one">
                    <asp:ListItem Value="Select">Select</asp:ListItem>
                    <asp:ListItem Value="Bus">Bus</asp:ListItem>
                    <asp:ListItem Value="Bike">Bike</asp:ListItem>
                    <asp:ListItem Value="Car">Car</asp:ListItem>
                    <asp:ListItem Value="Train">Train</asp:ListItem>
                    <asp:ListItem Value="Flight">Flight</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvvehicle" runat="server" ControlToValidate="ddlvehicle" 
                    Text="*" CssClass="text-danger" Display="Dynamic" ValueToCompare="Select"
                    Operator="NotEqual" Type="String" ValidationGroup="one"></asp:CompareValidator>
            </div>
            <div class="col-sm-offset-0 col-sm-6">
                <asp:Label ID="lbldist" runat="server" Text="Distance(KM)" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtdist" runat="server" CssClass="form-control" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvdist" runat="server" ControlToValidate="txtdist" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div class="col-sm-6">
                <asp:Label ID="lblfare" runat="server" Text="Fare" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtfare" runat="server" CssClass="form-control" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvfare" runat="server" ControlToValidate="txtfare" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
        </div>
        <br />
        <asp:Button runat="server" ID ="btnupdate" Text="Update" CssClass="btn btn-primary" ValidationGroup="one" OnClick="btnupdate_Click"/>
        <asp:Button ID="btncalculate" runat="server" Text="Calculate" CssClass="btn btn-primary" OnClick="btncalculate_Click"/>
        <asp:Label ID="lblmsg" runat="server" CssClass="label"></asp:Label>
        <asp:ValidationSummary ID="vsummary" runat="server" ValidationGroup="one" DisplayMode="BulletList"
            EnableClientScript="true" CssClass="text-danger"/>
    </div>
    <div class="col-sm-6">
        <div class="row"> 
            <div>
                <asp:Label ID="lblgradepay" runat="server" Text="Grade Pay" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtgradepay" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="lblhours" runat="server" Text="Hours Difference" CssClass="label"></asp:Label>
                <asp:TextBox ID="txthours" runat="server" CssClass="form-control" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvhours" runat="server" ControlToValidate="txthours" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblDarate" runat="server" Text="DA Rate" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtrate" runat="server" CssClass="form-control" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvrate" runat="server" ControlToValidate="txtrate" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div >
                <asp:Label ID="lblDA" runat="server" Text="DA" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtDA" runat="server" CssClass="form-control" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvda" runat="server" ControlToValidate="txtDA" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div >
                <asp:Label ID="lblpercent" runat="server" Text="DA percent" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtpercent" CssClass="form-control" runat="server" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvpercent" runat="server" ControlToValidate="txtpercent" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lbltotal" runat="server" Text="Total" CssClass="label"></asp:Label>
                <asp:TextBox ID="txttotal" runat="server" CssClass="form-control" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtotal" runat="server" ControlToValidate="txttotal" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>
   </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Details] WHERE ([detail_id] = @detail_id)">
        <SelectParameters>
            <asp:SessionParameter SessionField="list" Name="detail_id" Type="Int32"></asp:SessionParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Details.* FROM Details WHERE (detail_id = @detail_id)" 
        UpdateCommand="UPDATE Details SET start_date = @start_date, end_date = @end_date, start_time = @start_time, end_time = @end_time, origin = @origin, destination = @destination, stay = @stay, vehicle = @vehicle, distance = @distance, fare = @fare, hours = @hours, DA_rate = @DA_rate, DA = @DA, DA_percent = @DA_percent, total = @total WHERE (detail_id = @detail_id)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="detail_id" SessionField="list" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter Name="start_date" ControlID="txtdate" PropertyName="Text" DbType="Date" />
            <asp:ControlParameter Name="end_date" ControlID="txtedate" PropertyName="Text" DbType="Date" />
            <asp:ControlParameter Name="start_time" ControlID="txtstime" PropertyName="Text" DbType="Time" />
            <asp:ControlParameter Name="end_time" ControlID="txtetime" PropertyName="Text" DbType="Time" />
            <asp:ControlParameter Name="origin" ControlID="ddlfrom" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="destination" ControlID="ddlto" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="stay" ControlID="ddlstay" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="vehicle" ControlID="ddlvehicle" PropertyName="SelectedValue" />
            <asp:ControlParameter Name="distance" ControlID="txtdist" PropertyName="Text" />
            <asp:ControlParameter Name="fare" ControlID="txtfare" PropertyName="Text" />
            <asp:ControlParameter Name="hours" ControlID="txthours" PropertyName="Text" />
            <asp:ControlParameter Name="DA_rate" ControlID="txtrate" PropertyName="Text" />
            <asp:ControlParameter Name="DA" ControlID="txtDA" PropertyName="Text" />
            <asp:ControlParameter Name="DA_percent" ControlID="txtpercent" PropertyName="Text" />
            <asp:ControlParameter Name="total" ControlID="txttotal" PropertyName="Text" />
            <asp:SessionParameter DefaultValue="" Name="detail_id" SessionField="list" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
