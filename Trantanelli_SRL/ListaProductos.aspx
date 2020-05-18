<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="Trantanelli_SRL.ListaProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_producto" DataSourceID="ProdcutosDS" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="id_producto" HeaderText="id_producto" InsertVisible="False" ReadOnly="True" SortExpression="id_producto" />
        <asp:BoundField DataField="nombre_producto" HeaderText="nombre_producto" SortExpression="nombre_producto" />
        <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" />
        <asp:BoundField DataField="precio_unitario" HeaderText="precio_unitario" SortExpression="precio_unitario" />
        <asp:BoundField DataField="detalles" HeaderText="detalles" SortExpression="detalles" />
        <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
    </Columns>
</asp:GridView>
<asp:ObjectDataSource ID="ProdcutosDS" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarTodosProductos" TypeName="ProductosDSTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_id_producto" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nombre_producto" Type="String" />
        <asp:Parameter Name="id_categoria" Type="Int32" />
        <asp:Parameter Name="precio_unitario" Type="Decimal" />
        <asp:Parameter Name="detalles" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nombre_producto" Type="String" />
        <asp:Parameter Name="id_categoria" Type="Int32" />
        <asp:Parameter Name="precio_unitario" Type="Decimal" />
        <asp:Parameter Name="detalles" Type="String" />
        <asp:Parameter Name="Original_id_producto" Type="Int32" />
    </UpdateParameters>
</asp:ObjectDataSource>
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
        
        <asp:Button ID="Button1" runat="server" Text="Detalle" OnClick="Button1_Click" />
        <asp:Button ID="Button4" runat="server" Text="SIGUIENTE" OnClick="Button4_Click"/>
        <br />
    </div>
</asp:Content>
