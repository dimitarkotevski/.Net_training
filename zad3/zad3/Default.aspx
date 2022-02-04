<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zad3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h1>Phone# Validate</h1>
    </div>
    <div class="containter">
        <div class="row">
             <div class="col-md-3">
            <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                 
            <div class="text-left">
                <asp:RequiredFieldValidator 
                class="text-danger"
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="phone"
                ErrorMessage="Phone required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator1" 
                runat="server" 
                ValidationExpression="\+389 7[0-8] \d{3} \d{3}"
                ControlToValidate="phone"
                ErrorMessage="Not valid phone"></asp:RegularExpressionValidator>
                
            </div>
        </div>
        
        </div>



        <div class="row">
            <div class="col-md-3">
            <asp:Button ID="register" runat="server" Text="Button" OnClick="register_Click" />
                </div>
        </div>
        <div class="row">
            <div class="col-md-3">
            <asp:Label ID="text" runat="server" Text="Label"></asp:Label>
                </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </div>
        </div>
    </div>
    

</asp:Content>
