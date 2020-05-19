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
            <img width="100px" height="100px" src="assets/images/carrito.png" /><br />
            <asp:Label ID="Label1" runat="server" Text="0" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000099"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="0.00"></asp:Label>
        </div>
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id_producto" DataSourceID="objProductos">
            <Columns>
                <asp:BoundField DataField="id_producto" HeaderText="id_producto" InsertVisible="False" ReadOnly="True" SortExpression="id_producto" Visible="False" />
                <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" Visible="False" />
                <asp:BoundField DataField="codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="nombre_producto" HeaderText="Producto" SortExpression="nombre_producto" />
                <asp:BoundField DataField="detalles" HeaderText="Descripcion" SortExpression="detalles" />
                <asp:BoundField DataField="precio_unitario" HeaderText="Precio Unitario $" SortExpression="precio_unitario" />
                <asp:TemplateField HeaderText="Comprar">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnAgregar" runat="server" CommandArgument='<%# Eval("id_producto") %>' OnClick="btnAgregar_Click">
                                Agregar
                            </asp:LinkButton>
                        </ItemTemplate>
                        <ControlStyle BackColor="#AD2727" BorderColor="Lime" BorderStyle="Solid" Font-Bold="True" Font-Size="XX-Large" Font-Underline="False" ForeColor="White" />
                    </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="objProductos" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarTodosProductos" TypeName="ProductosDSTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
            
        </asp:ObjectDataSource>
        <div style="display:scroll; position:fixed; top:20px; right:0px; text-align:center;">
            <asp:Button ID="Button1" runat="server" Text="Detalle" OnClick="Button1_Click" />
        <asp:Button ID="Button4" runat="server" Text="SIGUIENTE" OnClick="Button4_Click"/>
        </div>
        
        <br />
    </div>
</asp:Content>
