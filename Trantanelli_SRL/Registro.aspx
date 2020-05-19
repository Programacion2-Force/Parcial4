<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Trantanelli_SRL.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;
        Ingrese su nombre<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Digite su nombre"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" ForeColor="Black" Height="23px"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;
        Ingrese su Apellido<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Digite su apellido"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFFF66" BorderColor="#333300" BorderStyle="Double" ForeColor="Black" Height="25px"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;
        Nombre de Usuario<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cree un nombre de Usuario"></asp:RequiredFieldValidator>
        <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFFF66" BorderColor="#333300" BorderStyle="Double" ForeColor="Black" Height="26px"></asp:TextBox>
    </p>
    &nbsp;&nbsp;
    Contraseña<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cree una contraseña"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" Height="25px" TextMode="Password"></asp:TextBox>
    <br />
    &nbsp;&nbsp;
    Repetir Contraseña<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox6" ErrorMessage="Las contraseñas no coinciden"></asp:CompareValidator>
    <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" Height="25px" TextMode="Password"></asp:TextBox>
    <br />
    &nbsp;&nbsp;
    Ingrese correo electronico<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Digite su correo electrónico"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox5" runat="server" BackColor="#FFFF66" BorderColor="Black" BorderStyle="Double" CssClass="auto-style1" Height="26px"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#FF6600" BorderColor="Black" BorderStyle="Groove" Height="33px" Text="Registrarme" OnClick="Button1_Click1" />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="Login.aspx">Ya tengo una cuenta</a>
</asp:Content>
