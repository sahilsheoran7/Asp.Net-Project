<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="FinalProject.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
        <div class="section">
            <div>
                 <asp:Label ID="lbltype" runat="server" Text="Type:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrtype" runat="server" CssClass="label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblstartd" runat="server" Text="Start Date:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrsdate" runat="server" CssClass="label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblendd" runat="server" Text="End Date:" CssClass="label"></asp:Label>
                <asp:Label ID="lblredate" runat="server" CssClass="label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblstartt" runat="server" Text="Start Time:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrstime" runat="server" CssClass="label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblendt" runat="server" Text="End time:" CssClass="label"></asp:Label>
                <asp:Label ID="lblretime" runat="server" CssClass="label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblorigin" runat="server" Text="Origin:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrorigin" runat="server" CssClass="label"></asp:Label>
            </div>
                 <div>
                <asp:Label ID="lbldest" runat="server" Text="Destination:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrdest" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="lblstay" runat="server" Text="Stay:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrstay" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="Label13" runat="server" Text="Vehicle:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrveh" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="Label15" runat="server" Text="Distance:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrdist" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="Label17" runat="server" Text="Fare:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrfare" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="Label19" runat="server" Text="Hours:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrhours" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="Label21" runat="server" Text="DA Rate:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrrate" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="Label23" runat="server" Text="DA:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrDA" runat="server" CssClass="label"></asp:Label>
            </div>

                 <div>
                <asp:Label ID="Label25" runat="server" Text="DA Percent:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrpercent" runat="server" CssClass="label"></asp:Label>
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Total:" CssClass="label"></asp:Label>
                <asp:Label ID="lblrtotal" runat="server" CssClass="label"></asp:Label>
            </div>
            <asp:Button ID="btnsubmit" runat="server" Text="Confirm Details"  CssClass="btn btn-primary" OnClick="btnsubmit_Click" Width="129px"/>
            <asp:Button runat="server" ID ="btnnext" Text="Modify Details" CssClass="btn btn-primary"  PostBackUrl="~/Booking.aspx" Width="126px" />
            <asp:Label ID="lblmsg" runat="server" CssClass="label"></asp:Label>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Details] WHERE [detail_id] = @original_detail_id AND [user_id] = @original_user_id AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL)) AND [start_date] = @original_start_date AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([origin] = @original_origin) OR ([origin] IS NULL AND @original_origin IS NULL)) AND (([destination] = @original_destination) OR ([destination] IS NULL AND @original_destination IS NULL)) AND (([stay] = @original_stay) OR ([stay] IS NULL AND @original_stay IS NULL)) AND (([vehicle] = @original_vehicle) OR ([vehicle] IS NULL AND @original_vehicle IS NULL)) AND (([distance] = @original_distance) OR ([distance] IS NULL AND @original_distance IS NULL)) AND (([fare] = @original_fare) OR ([fare] IS NULL AND @original_fare IS NULL)) AND (([hours] = @original_hours) OR ([hours] IS NULL AND @original_hours IS NULL)) AND (([DA_rate] = @original_DA_rate) OR ([DA_rate] IS NULL AND @original_DA_rate IS NULL)) AND (([DA] = @original_DA) OR ([DA] IS NULL AND @original_DA IS NULL)) AND (([DA_percent] = @original_DA_percent) OR ([DA_percent] IS NULL AND @original_DA_percent IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL))" InsertCommand="INSERT INTO [Details] ([user_id], [type], [start_date], [end_date], [start_time], [end_time], [origin], [destination], [stay], [vehicle], [distance], [fare], [hours], [DA_rate], [DA], [DA_percent], [total]) VALUES (@user_id, @type, @start_date, @end_date, @start_time, @end_time, @origin, @destination, @stay, @vehicle, @distance, @fare, @hours, @DA_rate, @DA, @DA_percent, @total)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Details]" UpdateCommand="UPDATE [Details] SET [user_id] = @user_id, [type] = @type, [start_date] = @start_date, [end_date] = @end_date, [start_time] = @start_time, [end_time] = @end_time, [origin] = @origin, [destination] = @destination, [stay] = @stay, [vehicle] = @vehicle, [distance] = @distance, [fare] = @fare, [hours] = @hours, [DA_rate] = @DA_rate, [DA] = @DA, [DA_percent] = @DA_percent, [total] = @total WHERE [detail_id] = @original_detail_id AND [user_id] = @original_user_id AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL)) AND [start_date] = @original_start_date AND (([end_date] = @original_end_date) OR ([end_date] IS NULL AND @original_end_date IS NULL)) AND (([start_time] = @original_start_time) OR ([start_time] IS NULL AND @original_start_time IS NULL)) AND (([end_time] = @original_end_time) OR ([end_time] IS NULL AND @original_end_time IS NULL)) AND (([origin] = @original_origin) OR ([origin] IS NULL AND @original_origin IS NULL)) AND (([destination] = @original_destination) OR ([destination] IS NULL AND @original_destination IS NULL)) AND (([stay] = @original_stay) OR ([stay] IS NULL AND @original_stay IS NULL)) AND (([vehicle] = @original_vehicle) OR ([vehicle] IS NULL AND @original_vehicle IS NULL)) AND (([distance] = @original_distance) OR ([distance] IS NULL AND @original_distance IS NULL)) AND (([fare] = @original_fare) OR ([fare] IS NULL AND @original_fare IS NULL)) AND (([hours] = @original_hours) OR ([hours] IS NULL AND @original_hours IS NULL)) AND (([DA_rate] = @original_DA_rate) OR ([DA_rate] IS NULL AND @original_DA_rate IS NULL)) AND (([DA] = @original_DA) OR ([DA] IS NULL AND @original_DA IS NULL)) AND (([DA_percent] = @original_DA_percent) OR ([DA_percent] IS NULL AND @original_DA_percent IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="original_start_time"></asp:Parameter>
            <asp:Parameter Name="original_end_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="original_origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_total" Type="Decimal"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="type" Type="String"></asp:Parameter>
            <asp:Parameter Name="start_date" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="end_date" DbType="Date"></asp:Parameter>
            <asp:Parameter Name="start_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="end_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DA" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="total" Type="Decimal"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="end_date"></asp:Parameter>
            <asp:Parameter DbType="Time" Name="start_time"></asp:Parameter>
            <asp:Parameter Name="end_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DA" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="total" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_detail_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_type" Type="String"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_start_date"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_end_date"></asp:Parameter>
            <asp:Parameter Name="original_start_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="original_end_time" DbType="Time"></asp:Parameter>
            <asp:Parameter Name="original_origin" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_destination" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_stay" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_vehicle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_distance" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_fare" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_hours" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_DA_rate" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_DA_percent" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="original_total" Type="Decimal"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
