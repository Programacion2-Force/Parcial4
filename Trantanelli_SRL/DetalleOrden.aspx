<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="DetalleOrden.aspx.cs" Inherits="Trantanelli_SRL.DetalleOrden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1>Este es el detalle de su carrito de compras</h1>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="objOrden">
        <Columns>
            <asp:BoundField DataField="idorden" HeaderText="idorden" SortExpression="idorden" Visible="False" />
            <asp:BoundField DataField="id_producto" HeaderText="id_producto" SortExpression="id_producto" Visible="False" />
            <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
            <asp:BoundField DataField="producto" HeaderText="producto" SortExpression="producto" />
            <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
            <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEliminar" runat="server" CommandArgument='<%# Eval("idorden") %>' OnClick="btnEliminar_Click">
                                Eliminar
                            </asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle BackColor="#009933" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Size="XX-Large" Font-Underline="False" />
                    </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="objOrden" runat="server" SelectMethod="MostrarTodosProductos" TypeName="Trantanelli_SRL.OrdenBLL"></asp:ObjectDataSource>
    <br />
    <asp:Button runat="server" Text="Volver" OnClick="Button1_Click" />
</asp:Content>
