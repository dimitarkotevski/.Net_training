<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zad2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 20px;">
       <div class="row">
           <div class="col-md-3">
               <asp:TextBox ID="email" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator1" 
                   runat="server" 
                   ErrorMessage="Not empty"
                   ControlToValidate="email"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="emailValidator" 
                        class="text-danger"
                        runat="server" 
                        ControlToValidate="email"
                        ValidationExpression="\w+@\w+\.\w+"
                        ErrorMessage="Email error"></asp:RegularExpressionValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="password" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator2" 
                   runat="server" 
                   ErrorMessage="Not empty"
                   ControlToValidate="password"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="passwordValidator" 
                        class="text-danger"
                        runat="server" 
                        ControlToValidate="password"
                        ValidationExpression=".{5,}"
                        ErrorMessage="Password error"></asp:RegularExpressionValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="cpassword" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator3" 
                   runat="server" 
                   ErrorMessage="Not empty"
                   ControlToValidate="cpassword"></asp:RequiredFieldValidator>
               <asp:CompareValidator 
                    ID="CompareValidator1" 
                   ControlToValidate="cpassword"
                   ControlToCompare="password"
                    runat="server" 
                    ErrorMessage="Cpassword error"></asp:CompareValidator>
           </div>
       </div>

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Register" runat="server" Text="Register" OnClick="Register_Click" />
       </div>
        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="username" runat="server" Text=""></asp:Label>
       </div>
   </div>

</asp:Content>
