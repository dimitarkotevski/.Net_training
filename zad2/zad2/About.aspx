<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="zad2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container" style="margin: 20px;">
            <div class="row">
                
                    <asp:DropDownList ID="cities" runat="server">
                    <asp:ListItem>(city)</asp:ListItem>
                    <asp:ListItem>Skopje</asp:ListItem>
                    <asp:ListItem>Bitola</asp:ListItem>
                    <asp:ListItem>Ohrid</asp:ListItem>
                </asp:DropDownList>
                
                
                    <asp:RequiredFieldValidator 
                        class="text-danger"
                        ID="cityVal"
                        ControlToValidate="cities"
                        runat="server" 
                        InitialValue="(city)"
                        ErrorMessage="Choose city"></asp:RequiredFieldValidator>
                
                
                <div class="row" style="margin-left: 0px; margin-top: 10px;">
                    <asp:Button ID="Register" runat="server" Text="Submit" OnClick="Register_Click" />
                </div>
                <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="ChosenCity" runat="server" Text="Selected city is: "></asp:Label>
       </div>
            </div>
            
     </div>
</asp:Content>
