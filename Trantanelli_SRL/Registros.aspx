<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="Trantanelli_SRL.Registros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <p>
        iIngrese su nombre<asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" ForeColor="Black" Height="23px"></asp:TextBox>
    </p>
    <p>
        IIngrese su Apellido<asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF66" BorderColor="#333300" BorderStyle="Double" ForeColor="Black" Height="25px"></asp:TextBox>
    </p>
    <p>
        Nombre de Usuario<asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFF66" BorderColor="#333300" BorderStyle="Double" ForeColor="Black" Height="26px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    </p>
    Contraseña<asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" Height="25px" TextMode="Password"></asp:TextBox>
    I<br />
    IIngrese correo electronico<asp:TextBox ID="TextBox5" runat="server" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" CssClass="auto-style1" Height="26px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#FF6600" BorderColor="Black" BorderStyle="Groove" Height="33px" Text="Registrarme" />
    <br />
    <br />
  
</asp:Content>
