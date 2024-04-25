<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestras/Menu.Master" AutoEventWireup="true" CodeBehind="MenuPrin.aspx.cs" Inherits="ExamenFinal.PagMaestras.Salir" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
    .titulo {
        text-align: center;
        font-family: Arial, sans-serif;
        color: #fff; /* Color del texto */
        margin-top: 50px; /* Espacio superior */
        margin-bottom: 30px; /* Espacio inferior */
    }

    .autor {
        font-style: italic;
        color: #fff; /* Color del autor */
    }

    .instrucciones {
        font-weight: bold;
        color: #fff; /* Color de las instrucciones */
    }

        /* Estilo para el título */
        h1 {
            color: white;
        }

        .auto-style2 {
            font-weight: normal;
            font-size: small;
        }
        .auto-style4 {
            font-weight: bold;
            color: #fff;
            text-align: center;
        }
            .auto-style6 {
                font-style: italic;
                color: #fff;
                text-align: center;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <h1 class="titulo">Página de Inicio - Bienvenido </h1>
            <h1 class="auto-style6"><span class="auto-style2">creado por Alois Buschor</span> </h1>
            <h1 class="auto-style4">Dale Click al Circulo para elegir opciones </h1>
            <!-- Título de la página de inicio -->
        </div>

</asp:Content>

