<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="zad1.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="container">
        <div>
            Изберете боја на позадина: <br />
            <asp:DropDownList ID="boja" runat="server"></asp:DropDownList>
        </div>
        <div>
            Изберете фонт <br />
            <asp:DropDownList ID="Font" runat="server"></asp:DropDownList>
        </div>
        <div>
            Изберете боја на фонт: <br />
            <asp:DropDownList ID="ColorFont" runat="server"></asp:DropDownList>
        </div>

        <div>
            Големина на фонт: <br />
            <asp:TextBox ID="FontSize" runat="server"></asp:TextBox>

        </div>


        <div>
            Тип на рамка <br />
            <asp:RadioButtonList ID="BorderType" runat="server"></asp:RadioButtonList>
        </div>

        <div>
            Слика: <br />
            <asp:CheckBoxList ID="showImage" runat="server"></asp:CheckBoxList>
        </div>

        <div>
            Слика: <br />
            <asp:TextBox ID="ShortText" runat="server" TextMode="MultiLine"></asp:TextBox>    
        </div>

        <div>
            <asp:Button ID="Save" runat="server" Text="Button" OnClick="Save_Click" />
        </div>
        <div>
            
            <asp:Panel ID="Cestitka" runat="server"></asp:Panel>
                        <asp:Label ID="Poraka" Text="text" runat="server" />
            
        </div>
    </div>

</asp:Content>
