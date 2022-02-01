<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="zad1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <div class="container">
        <div class="row">
        <div class="col-sm">
                <h1>Ex#1</h1>
            <div class="col-md-12">
                Изберете град:<br/>
                <asp:ListBox ID="ListaGradovi" runat="server">
                    <asp:ListItem Value="СК">Скопје</asp:ListItem>
                    <asp:ListItem Value="БТ">Битола</asp:ListItem>
                    <asp:ListItem Value="ПЕ">Прилеп</asp:ListItem>
                    <asp:ListItem Value="ОХ">Охрид</asp:ListItem>
                </asp:ListBox>
            </div>
            <div class="col-md-12">
                <asp:Button ID="PrikaziGrad" runat="server" Text="Избери" OnClick="PrikaziGrad_Click" />
            </div>
            <div class="col-md-12">
                Селектиран град:<asp:Label ID="SelektiranGrad" runat="server" Text="(none)"></asp:Label>
            </div>
        </div>
            <br />
            <hr style="border: 1px solid black" />



        <div class="col-sm">
            <h1>Ex#2</h1>
        <div class="col-md-12">
            Изберете град:<br/>
            <asp:ListBox ID="Gradovi" runat="server">
                <asp:ListItem Value="0">Скопје</asp:ListItem>
                <asp:ListItem Value="180">Битола</asp:ListItem>
                <asp:ListItem Value="150">Прилеп</asp:ListItem>
                <asp:ListItem Value="190">Охрид</asp:ListItem>
            </asp:ListBox>
        </div>
        <div class="col-md-12">
            <asp:Button ID="Button1" runat="server" Text="Избери" OnClick="SelektiranGrad1_DataBinding" />
        </div>
        <div class="col-md-12">
            Селектиран град:<asp:Label ID="SelektiranGrad1" runat="server" Text="(none)" OnDataBinding="SelektiranGrad1_DataBinding"></asp:Label>
        </div>
            <div class="col-md-12">
            Дестинација од Скопје:<asp:Label ID="Odalecenost" runat="server" Text="(none)"></asp:Label>
        </div>
        </div>
            <br />
            <hr style="border: 1px solid black" />







            <div class="col-sm">
            <h1>Ex#3</h1>
        <div class="col-md-12">
            Изберете град:<br/>
            <asp:ListBox ID="Cities" runat="server" SelectionMode="Multiple">
                <asp:ListItem Value="0">Скопје</asp:ListItem>
                <asp:ListItem Value="180">Битола</asp:ListItem>
                <asp:ListItem Value="150">Прилеп</asp:ListItem>
                <asp:ListItem Value="190">Охрид</asp:ListItem>
            </asp:ListBox>
        </div>
        <div class="col-md-12">
            <asp:Button ID="Button2" runat="server" Text="Избери" OnClick="Selektirani_Gradovi" />
        </div>
        <div class="col-md-12">
            Селектирани градови:<asp:Label ID="TekstZaPrikazuvanje" runat="server" Text="(none)" OnDataBinding="SelektiranGrad1_DataBinding"></asp:Label>
        </div>
            
        </div>
        </div>
            <br />
            <hr style="border: 1px solid black" />
    </div>
    </div>

</asp:Content>
