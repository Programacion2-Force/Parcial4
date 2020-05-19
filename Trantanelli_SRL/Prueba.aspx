<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="Trantanelli_SRL.Prueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_producto" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="id_producto" HeaderText="id_producto" InsertVisible="False" ReadOnly="True" SortExpression="id_producto" />
            <asp:BoundField DataField="nombre_producto" HeaderText="nombre_producto" SortExpression="nombre_producto" />
            <asp:BoundField DataField="id_categoria" HeaderText="id_categoria" SortExpression="id_categoria" />
            <asp:BoundField DataField="precio_unitario" HeaderText="precio_unitario" SortExpression="precio_unitario" />
            <asp:BoundField DataField="detalles" HeaderText="detalles" SortExpression="detalles" />
            <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="MostrarTodosProductos" TypeName="ProductosDSTableAdapters.ProductosTableAdapter" UpdateMethod="Update">
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
</asp:Content>
