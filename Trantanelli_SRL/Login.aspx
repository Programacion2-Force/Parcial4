<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Trantanelli_SRL.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Nombre de Usuario:<asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCC99" BorderColor="Black" BorderStyle="Double" Height="25px"></asp:TextBox>
    </p>
    <p>
        Contraseña:<asp:TextBox ID="TextBox2" runat="server" BackColor="#FFCC99" BorderColor="Black" BorderStyle="Double" Height="27px" TextMode="Password"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="Lime" BorderColor="Black" BorderStyle="Groove" Height="28px" Text="Ingresar" OnClick="Button1_Click" />
        <br />
        <br /><a href="Registro.aspx">No tengo cuenta</a>
    </p>
    <p>
        &nbsp;</p>
    

</asp:Content>
