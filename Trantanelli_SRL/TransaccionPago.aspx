<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="TransaccionPago.aspx.cs" Inherits="Trantanelli_SRL.TransaccionPago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 193px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <h2>Realizar Pago de su pedido</h2>
    <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem Value="1">Tarjeta</asp:ListItem>
        <asp:ListItem Value="2">Efectivo (Pagando al repartidor)</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="Button2" runat="server" Text="Confirmar forma de pago" OnClick="Button2_Click" />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <h3>Digite los datos de su tarjeta de Cr&eacute;dito o D&eacute;bito</h3>
    <table>
        <tr>
            <td class="auto-style1">N&uacute;mero de la tarjeta:</td>
            <td><asp:TextBox ID="TextBox1" runat="server" placeholder="0000..." BorderColor="#CCCCCC" TextMode="Number" Size="21" MaxLength="16"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Digite el número de su tarjeta"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Mes/Año de Expiraci&oacute;n:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="75px">
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                    <asp:ListItem>2025</asp:ListItem>
                    <asp:ListItem>2026</asp:ListItem>
                    <asp:ListItem>2027</asp:ListItem>
                    <asp:ListItem>2028</asp:ListItem>
                    <asp:ListItem>2029</asp:ListItem>
                    <asp:ListItem>2030</asp:ListItem>
                    <asp:ListItem>2031</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">CVV:</td>
            <td><asp:TextBox ID="TextBox3" runat="server" placeholder="123" BorderColor="#CCCCCC" TextMode="Number" Size="3" MaxLength="3" ToolTip="3 números en la parte de atrás de la tarjeta"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Digite los números CVV, están detrás de la tarjeta"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Nombre seg&uacute;n tarjeta</td>
            <td><asp:TextBox ID="TextBox4" runat="server" placeholder="Nombre Apellidos" BorderColor="#CCCCCC" Type="Text" width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Escriba el nombre del titular de la tarjeta"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Direcci&oacute;n Email:</td>
            <td><asp:TextBox ID="TextBox5" runat="server" placeholder="ejemplo@ejemplo.es" BorderColor="#CCCCCC" Type="Email" width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Escriba su email"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:Label ID="Label1" runat="server" Text="Monto: $"></asp:Label><asp:Label ID="Label2" runat="server" Text="0.00"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Pagar" OnClick="Button1_Click" />
        <br />
    </asp:Panel>
</asp:Content>
