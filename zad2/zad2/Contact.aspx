<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="zad2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="container" style="margin: 20px;">
       <div class="row">
           <div class="col-md-3">
               <asp:TextBox ID="name" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator1" 
                   runat="server" 
                   ErrorMessage="Not empty"
                   ControlToValidate="name"
                   
                   ></asp:RequiredFieldValidator>
               
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="grade" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator2" 
                   runat="server" 
                   ErrorMessage="Not empty"
                   ControlToValidate="grade"></asp:RequiredFieldValidator>
               <asp:RangeValidator 
                   ID="RangeValidator1" 
                   runat="server" 
                   ControlToValidate="grade"
                   ErrorMessage="Out of range" MaximumValue="10" MinimumValue="5"
                   Type="Integer"></asp:RangeValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="date" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   class="text-danger"
                   ID="RequiredFieldValidator3" 
                   runat="server" 
                   ErrorMessage="Not empty"
                   ControlToValidate="date"></asp:RequiredFieldValidator>
               <asp:CompareValidator 
                   ID="CompareValidator1" 
                   runat="server" 
                   ControlToValidate="date"
                   ValueToCompare="2022-02-04"
                   ErrorMessage="Not valid date" Operator="LessThanEqual"></asp:CompareValidator>
           </div>
       </div>

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Nastan" runat="server" Text="Register" OnClick="Register_Click" />
       </div>
        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label class="text-success" ID="labela" runat="server" Text=""></asp:Label>
       </div>
   </div>

</asp:Content>
