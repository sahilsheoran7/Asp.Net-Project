<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="FinalProject.InsertData" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div>
        <h1>Travel Booking</h1>
        <br />
         <asp:ValidationSummary ID="vsummary" runat="server" ValidationGroup="one" DisplayMode="BulletList"
            EnableClientScript="true" HeaderText=" *Required" CssClass="text-danger"/>
        <div class="col-sm-8">
        <div class="row col-sm-offset-3">
            <asp:RadioButtonList ID="rdloptions" runat="server" ValidationGroup="one" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rdloptions_SelectedIndexChanged" RepeatLayout="Flow">
                <asp:ListItem Selected="True" Value="Tour">Tour&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Value="Office">Office&nbsp;&nbsp;</asp:ListItem>
                <asp:ListItem Value="Holiday">Holiday&nbsp;&nbsp;</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvradio" runat="server" ControlToValidate="rdloptions"
                Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-6 col-sm-offset-1">
                <asp:Label ID="lblstart" runat="server" Text="Start Date" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtdate" TextMode="Date" CssClass="form-control" runat="server" ValidationGroup="one"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvdate" runat="server" ControlToValidate="txtdate" 
                    Text="*" CssClass="text-danger" ValidationGroup="one"></asp:RequiredFieldValidator>
            </div>
            <div class="col-sm-offset-3 col-sm-6">
                <asp:Label ID="lblend" runat="server" Text="End Date" CssClass="label"></asp:Label>
                <asp:TextBox ID="txtedate" runat="server" CssClass="form-control" TextMode="Date" ValidationGroup="one"></asp:TextBox>
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
                    <asp:ListItem Value="one star Hotel">One Star Hotel</asp:ListItem>
                    <asp:ListItem Value="two star Hotel">Two Star Hotel</asp:ListItem>
                    <asp:ListItem Value="five star Hotel">Five Two Hotel</asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="cvstay" runat="server" ControlToValidate="ddlstay" 
                    Text="*" CssClass="text-danger" Display="Dynamic" ValueToCompare="Select"
                    Operator="NotEqual" Type="String" ValidationGroup="one"></asp:CompareValidator>
            </div>
            <div class="col-sm-6">
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
            <div class="col-sm-6">
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
        <asp:Button runat="server" ID ="btnnext" Text="Submit" CssClass="btn btn-primary" OnClick="btnnext_Click" ValidationGroup="one"  />
        <asp:Button ID="btncalculate" runat="server" Text="Calculate" CssClass="btn btn-primary" OnClick="btncalculate_Click" />
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
    <asp:SqlDataSource ID="SqlDataSourceInsert" runat="server" ConflictDetection="CompareAllValues"
        ConnectionString='<%$ ConnectionStrings:ConnectionString %>' 
        DeleteCommand="DELETE FROM [Details] WHERE [detail_id] = @original_detail_id 
                AND [user_id] = @original_user_id 
                AND [start_date] = @original_start_date     
                AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) 
                AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) 
                AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) 
                AND (([origin] = @original_origin) OR ([origin] IS NULL AND @original_origin IS NULL)) 
                AND (([destination] = @original_destination) OR ([destination] IS NULL AND @original_destination IS NULL)) 
                AND (([stay] = @original_stay) OR ([stay] IS NULL AND @original_stay IS NULL)) 
                AND (([vehicle] = @original_vehicle) OR ([vehicle] IS NULL AND @original_vehicle IS NULL)) 
                AND (([distance] = @original_distance) OR ([distance] IS NULL AND @original_distance IS NULL))
                AND (([fare] = @original_fare) OR ([fare] IS NULL AND @original_fare IS NULL)) 
                AND (([hours] = @original_hours) OR ([hours] IS NULL AND @original_hours IS NULL)) 
                AND (([DA_rate] = @original_DA_rate) OR ([DA_rate] IS NULL AND @original_DA_rate IS NULL)) 
                AND (([DA] = @original_DA) OR ([DA] IS NULL AND @original_DA IS NULL)) 
                AND (([DA_percent] = @original_DA_percent) OR ([DA_percent] IS NULL AND @original_DA_percent IS NULL)) 
                AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL))" 
        InsertCommand="INSERT INTO [Details] 
        ([user_id], [start_date], [end_date], [start_time], [end_time], [origin], [destination], 
        [stay], [vehicle], [distance], [fare], [hours], [DA_rate], [DA], [DA_percent], [total])
            VALUES (@user_id, @start_date, @end_date, @start_time, @end_time, @origin, @destination,
                @stay, @vehicle, @distance, @fare, @hours, @DA_rate, @DA, @DA_percent, @total)" 
        OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT * FROM [Details]" 
        UpdateCommand="UPDATE [Details] SET [user_id] = @user_id, [start_date] = @start_date, 
                [end_date] = @end_date, [start_time] = @start_time, [end_time] = @end_time, 
                [origin] = @origin, [destination] = @destination, [stay] = @stay, 
                [vehicle] = @vehicle, [distance] = @distance, [fare] = @fare, [hours] = @hours, 
                [DA_rate] = @DA_rate, [DA] = @DA, [DA_percent] = @DA_percent, [total] = @total 
        WHERE [detail_id] = @original_detail_id AND [user_id] = @original_user_id 
              AND [start_date] = @original_start_date AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) 
              AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) 
              AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) 
              AND (([origin] = @original_origin) OR ([origin] IS NULL AND @original_origin IS NULL)) 
              AND (([destination] = @original_destination) OR ([destination] IS NULL AND @original_destination IS NULL)) 
              AND (([stay] = @original_stay) OR ([stay] IS NULL AND @original_stay IS NULL)) 
              AND (([vehicle] = @original_vehicle) OR ([vehicle] IS NULL AND @original_vehicle IS NULL))
              AND (([distance] = @original_distance) OR ([distance] IS NULL AND @original_distance IS NULL))
              AND (([fare] = @original_fare) OR ([fare] IS NULL AND @original_fare IS NULL))
              AND (([hours] = @original_hours) OR ([hours] IS NULL AND @original_hours IS NULL)) 
              AND (([DA_rate] = @original_DA_rate) OR ([DA_rate] IS NULL AND @original_DA_rate IS NULL))
              AND (([DA] = @original_DA) OR ([DA] IS NULL AND @original_DA IS NULL)) 
              AND (([DA_percent] = @original_DA_percent) OR ([DA_percent] IS NULL AND @original_DA_percent IS NULL)) 
              AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="original_start_time"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="original_end_time"></asp:Parameter>
            <asp:Parameter Name="original_origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_total" Type="Decimal"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="start_date" Type="String"></asp:Parameter>
            <asp:Parameter Name="end_date" Type="String"></asp:Parameter>
            <asp:Parameter Name="start_time" Type="String"></asp:Parameter>
            <asp:Parameter Name="end_time" Type="String"></asp:Parameter>
            <asp:Parameter Name="origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="distance" Type="String"></asp:Parameter>
            <asp:Parameter Name="fare" Type="String"></asp:Parameter>
            <asp:Parameter Name="hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA_rate" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA_percent" Type="String"></asp:Parameter>
            <asp:Parameter Name="total" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="end_time"></asp:Parameter>
            <asp:Parameter Name="origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="total" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="original_start_time"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="original_end_time"></asp:Parameter>
            <asp:Parameter Name="original_origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_total" Type="Decimal"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
