<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="Trantanelli_SRL.ListaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="col-xs-12 col-sm-9">
        <h2>Haga su pedido </h2>
        Art&iacute;culos de Papeler&iacute;a
        <a name="tabla1"></a>
        <div style="display:scroll; position:fixed; top:50px; right:0px; text-align:center;">
            <asp:Label ID="Label1" runat="server" Text="0" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="0.00"></asp:Label>
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="Detalle" />
        <asp:Button ID="Button4" runat="server" Text="SIGUIENTE"/>
        <br />
    </div>
</asp:Content>
