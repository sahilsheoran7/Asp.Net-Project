<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="FinalProject.LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Travel The World</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/font-awesome.min.css" />
    <link href="Content/site.css" rel="stylesheet" />
    <link rel="stylesheet" href="Content/form-elements.css" />
</head>
<body>
   <div class="top-content">
       <div class="inner-bg">
           <div class="container">

               <div class="row">
                   <div class="col-sm-8 col-sm-offset-2 text">
                       <h1>Fastrack Travel</h1>
                       <div class="description">
                           <p>
                               already Have an Acoount?? <a href="Login.aspx"></a>
                                <i class="fa fa-smile-o"></i>
                           </p>
                       </div>
                   </div>
               </div>

               <form runat="server" role="form" id="form1" class="form">
               <div class="row">
                   <div class="col-sm-5">

                       <div class="form-box">
                           <div class="form-top">
                               <div class="form-top-left">
                                   <h3>Login to our Site</h3>
                                   <p>Enter Username and Password to Log on.. </p>
                               </div>
                               <div class="form-top-right">
                                   <i class="fa fa-lock"></i>
                               </div>
                           </div>
                           <div class="form-bottom">
                               <div class="form-group">
                                   <asp:Label ID="lblLname" runat="server" Text="Username" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtLname" runat="server" ValidationGroup="login"   CssClass="form-username form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                       ErrorMessage="Required" ControlToValidate="txtLname" CssClass="text-danger" ValidationGroup="login"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lblLpswd" runat="server" Text="Password" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtLpswd" runat="server" TextMode="Password" ValidationGroup="login" CssClass="form-password form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                       ErrorMessage="Required" ControlToValidate="txtLpswd" CssClass="text-danger" ValidationGroup="login"></asp:RequiredFieldValidator>
                               </div>
                               <asp:Label ID="lbllogin" runat="server" EnableViewState="false" CssClass="text-danger"></asp:Label>
                               <asp:Button ID="btnsub" runat="server" Text="Sign in!" CssClass="btn" OnClick="btnsub_Click" ValidationGroup="login" />
                           </div>
                       </div>
                   </div>

                   <div class=" col-sm-1 middle-border"></div>
                   <div class="col-sm-1"></div>

                   <div class="col-sm-5">

                       <div class="form-box">
                           <div class="form-top">
                               <div class="form-top-left">
                                   <h3>Sign Up now</h3>
                                   <p>Just a Few steps away to get access to our site..</p>
                               </div>
                               <div class="form-top-right">
                                   <i class="fa fa-pencil"></i>
                               </div>
                           </div>
                           <div class="form-bottom">
                               <p><asp:Label ID="lblError" runat="server" EnableViewState="false" 
                                    CssClass="text-danger"></asp:Label></p>
                               <div class="form-group">
                                   <asp:Label ID="lblsalutation" runat="server" Text="Salutaion" CssClass="label"></asp:Label>
                                   <asp:DropDownList ID="ddlsalutation" runat="server" CssClass="form-control">
                                       <asp:ListItem Value="Select">Select</asp:ListItem>
                                       <asp:ListItem Value="Mr">Mr</asp:ListItem>
                                       <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                                       <asp:ListItem Value="Ms">Ms</asp:ListItem>
                                   </asp:DropDownList>
                                   <asp:CompareValidator ControlToValidate="ddlsalutation" ID="CompareValidator1"
                                         CssClass="text-danger" Text="*" ErrorMessage="Please select a Salutation type"
                                         runat="server" Display="Dynamic" 
                                         Operator="NotEqual" ValueToCompare="Select" Type="String" />
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lblfirstname" runat="server" Text="First name" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtfirstname" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="First name cannot be null" Text="*"
                                       ControlToValidate="txtfirstname" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lbllastname" runat="server" Text="Last name" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtlastname" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Last name cannot be null" Text="*"
                                       ControlToValidate="txtlastname" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lblphone" runat="server" Text="Phone Number" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtphone" runat="server" TextMode="Phone" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone number is required" Text="*"
                                       ControlToValidate="txtphone" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lbldesig" runat="server" Text="Designation" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtdesig" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Designation is required" Text="*"
                                       ControlToValidate="txtdesig" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lblgrade" runat="server" Text="Grade Pay" CssClass="label"></asp:Label>
                                   <asp:DropDownList ID="ddlgrade" runat="server" CssClass="form-control">
                                       <asp:ListItem Value="Select">Select</asp:ListItem>
                                       <asp:ListItem Value="$600">$600</asp:ListItem>
                                       <asp:ListItem Value="$700">$700</asp:ListItem>
                                       <asp:ListItem Value="$1000">$1000</asp:ListItem>
                                       <asp:ListItem Value="$1500">$1500</asp:ListItem>
                                   </asp:DropDownList>
                                   <asp:CompareValidator ID="cvgrade" runat="server" ControlToValidate="ddlgrade"
                                       Text="*" CssClass="text-danger" Display="Dynamic" ValueToCompare="Select"
                                       Operator="NotEqual" Type="String" ValidationGroup="one"></asp:CompareValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lbloffice" runat="server" Text="Office" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtoffice" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Office name is required" Text="*"
                                       ControlToValidate="txtoffice" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lblhead" runat="server" Text="Head Quarter" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txthead" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Head quarter is required" Text="*"
                                       ControlToValidate="txthead" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lbluname" runat="server" Text="Username" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtuname" runat="server" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Username is required" Text="*"
                                       ControlToValidate="txtuname" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <div class="form-group">
                                   <asp:Label ID="lblpass" runat="server" Text="Password" CssClass="label"></asp:Label>
                                   <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Password is required" Text="*"
                                       ControlToValidate="txtpass" CssClass="text-danger"></asp:RequiredFieldValidator>
                               </div>
                               <asp:Button ID="btnsign" runat="server" Text="Sign me up!" CssClass="btn" OnClick="btnsign_Click" />
                               <asp:ValidationSummary ID="valsum" runat="server" 
                                   DisplayMode="BulletList" EnableClientScript="true"
                                   HeaderText="All the * fields are required" CssClass="text-danger"/>
                           </div>
                       </div>
                   </div>
               </div>
             </form>
           </div>
       </div>

   </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString='<%$ ConnectionStrings:ConnectionString %>'
        ConflictDetection="CompareAllValues"
        InsertCommand="INSERT INTO [Customer] ([salutation], [first_name], [last_name], [phone], [designation], [gradepay], [office], [headquarter], [username], [password]) VALUES (@salutation, @first_name, @last_name, @phone, @designation, @gradepay, @office, @headquarter, @username, @password)"
        SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND [username] = @original_username AND [password] = @original_password" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Customer] SET [salutation] = @salutation, [first_name] = @first_name, [last_name] = @last_name, [phone] = @phone, [designation] = @designation, [gradepay] = @gradepay, [office] = @office, [headquarter] = @headquarter, [username] = @username, [password] = @password WHERE [user_id] = @original_user_id AND [salutation] = @original_salutation AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [designation] = @original_designation AND [gradepay] = @original_gradepay AND [office] = @original_office AND [headquarter] = @original_headquarter AND [username] = @original_username AND [password] = @original_password">
        <DeleteParameters>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_phone" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_gradepay" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="salutation" Type="String"></asp:Parameter>
            <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="designation" Type="String"></asp:Parameter>
            <asp:Parameter Name="gradepay" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="office" Type="String"></asp:Parameter>
            <asp:Parameter Name="headquarter" Type="String"></asp:Parameter>
            <asp:Parameter Name="username" Type="String"></asp:Parameter>
            <asp:Parameter Name="password" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="salutation" Type="String"></asp:Parameter>
            <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="phone" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="designation" Type="String"></asp:Parameter>
            <asp:Parameter Name="gradepay" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="office" Type="String"></asp:Parameter>
            <asp:Parameter Name="headquarter" Type="String"></asp:Parameter>
            <asp:Parameter Name="username" Type="String"></asp:Parameter>
            <asp:Parameter Name="password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_user_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_salutation" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_phone" Type="Int64"></asp:Parameter>
            <asp:Parameter Name="original_designation" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_gradepay" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_office" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_headquarter" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <footer class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="footer-border">
                    <p>Copyright &copy; 2018 <i class="fa fa-smile-o"></i></p>
                </div>
            </div>
        </div>
    </footer>
    <script src="Scripts/jquery-2.2.4.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
