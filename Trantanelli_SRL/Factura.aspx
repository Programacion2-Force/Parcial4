<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Factura.aspx.cs" Inherits="Trantanelli_SRL.Factura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div alig="center">
        <h1>Este es el detalle de su factura electr&oacute;mica</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="objFactura">
            <Columns>
                <asp:BoundField DataField="idorden" HeaderText="idorden" InsertVisible="False" ReadOnly="True" SortExpression="idorden" Visible="False" />
                <asp:BoundField DataField="id_producto" HeaderText="id_producto" SortExpression="id_producto" Visible="False" />
                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="objFactura" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarOrd" TypeName="OrdenDSTableAdapters.orden1TableAdapter">
            <InsertParameters>
                <asp:Parameter Name="id_producto" Type="Int32" />
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="precio" Type="Double" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <br />

        <h2>Valor total a cancelar:</h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Continuar" OnClick="Button1_Click" />
    </div>
</asp:Content>
