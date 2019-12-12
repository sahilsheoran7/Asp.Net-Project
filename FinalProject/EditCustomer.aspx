<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCustomer.aspx.cs" Inherits="FinalProject.EditCustomer" %>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <div class="col-sm-12 table-responsive">
        <asp:GridView ID="grdcustomer" runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="user_id" DataSourceID="SqlDataSource1" AllowSorting="True"
            CssClass="table table-bordered table-condensed table-hover"
            OnPreRender="grdcustomer_PreRender"
            OnRowUpdated="grdcustomer_RowUpdated">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="ID" ReadOnly="True" 
                    InsertVisible="False" SortExpression="user_id">
                </asp:BoundField>
                <asp:BoundField DataField="salutation" HeaderText="Salutation" 
                    SortExpression="salutation">
                </asp:BoundField>
                <asp:BoundField DataField="first_name" HeaderText="First Name" 
                    SortExpression="first_name">
                </asp:BoundField>
                <asp:BoundField DataField="last_name" HeaderText="Last Name" 
                    SortExpression="last_name">
                </asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone">

                </asp:BoundField>
                <asp:BoundField DataField="designation" HeaderText="Designation" 
                    SortExpression="designation">
                </asp:BoundField>
                <asp:BoundField DataField="gradepay" HeaderText="Grade Pay"
                    SortExpression="gradepay">
                </asp:BoundField>
                <asp:BoundField DataField="office" HeaderText="Office" 
                    SortExpression="office">

                </asp:BoundField>
                <asp:BoundField DataField="headquarter" HeaderText="Head Quarter" 
                    SortExpression="headquarter">
                </asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="Username" 
                    SortExpression="username">

                </asp:BoundField>
                <asp:BoundField DataField="password" HeaderText="Password" 
                    SortExpression="password">
                </asp:BoundField>
                <asp:CommandField ShowEditButton="True" CausesValidation="false"></asp:CommandField>
            </Columns>
            <HeaderStyle CssClass="bg-halloween" />
            <EditRowStyle CssClass="warning" />
        </asp:GridView>
        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1"
            ConflictDetection="CompareAllValues"
            ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
            DeleteCommand="DELETE FROM [Customer] WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND [username] = @original_username AND [password] = @original_password"
            InsertCommand="INSERT INTO [Customer] ([salutation], [first_name], [last_name], [phone], [designation], [gradepay], [office], [headquarter], [username], [password]) VALUES (@salutation, @first_name, @last_name, @phone, @designation, @gradepay, @office, @headquarter, @username, @password)"
            OldValuesParameterFormatString="original_{0}"
            SelectCommand="SELECT * FROM [Customer] WHERE ([user_id] = @user_id)"
            UpdateCommand="UPDATE [Customer] SET [salutation] = @salutation, [first_name] = @first_name, [last_name] = @last_name, [phone] = @phone, [designation] = @designation, [gradepay] = @gradepay, [office] = @office, [headquarter] = @headquarter, [username] = @username, [password] = @password WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND [username] = @original_username AND [password] = @original_password">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_gradepay" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="salutation" Type="String"></asp:Parameter>
                <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="designation" Type="String"></asp:Parameter>
                <asp:Parameter Name="gradepay" Type="String"></asp:Parameter>
                <asp:Parameter Name="office" Type="String"></asp:Parameter>
                <asp:Parameter Name="headquarter" Type="String"></asp:Parameter>
                <asp:Parameter Name="username" Type="String"></asp:Parameter>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter SessionField="userid" Name="user_id" Type="String"></asp:SessionParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="salutation" Type="String"></asp:Parameter>
                <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="designation" Type="String"></asp:Parameter>
                <asp:Parameter Name="gradepay" Type="String"></asp:Parameter>
                <asp:Parameter Name="office" Type="String"></asp:Parameter>
                <asp:Parameter Name="headquarter" Type="String"></asp:Parameter>
                <asp:Parameter Name="username" Type="String"></asp:Parameter>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_user_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_gradepay" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
