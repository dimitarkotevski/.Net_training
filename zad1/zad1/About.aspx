<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="zad1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col">
                <div>
                    Внесете име на валута:<br />
                    <asp:TextBox ID="ImeValuta" runat="server"></asp:TextBox>
                </div>
                <div>
                    Внесете вредност на валута:<br />
                    <asp:TextBox ID="VrednostValuta" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Button ID="DodadiValuta" runat="server" Text="Add" OnClick="DodadiValuta_Click" />
                    <asp:Button ID="BrisiValuta" runat="server" Text="Delete" OnClick="BrisiValuta_Click" />
                </div>
                <div>
                    <asp:RadioButtonList ID="ListaValuti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged" />
                </div>
                <div>
                    Вкупно валути:<asp:Label ID="Total" runat="server" Text="0"></asp:Label>
                </div>
                <div>
                    Вредност:<br />
                    <asp:TextBox ID="Vrednost" runat="server"></asp:TextBox>
                </div>
                
                    Статус:<asp:Label ID="Status" runat="server" Text="0"></asp:Label>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
