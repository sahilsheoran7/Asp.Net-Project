<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">

    <div class="top-content">
       <div class="inner-bg">
           <div class="container">
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
                                       <asp:TextBox ID="txtLname" runat="server" ValidationGroup="login" CssClass="form-username form-control"></asp:TextBox>
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
                   </div>
               </form>
            </div>
       </div>
     </div>

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

</asp:Content>
