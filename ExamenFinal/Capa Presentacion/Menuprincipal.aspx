<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menuprincipal.aspx.cs" Inherits="ExamenFinal.Presentacion.Menuprincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../CSS/MenuCircular.css" rel="stylesheet" />
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
        .auto-style3 {
            font-style: italic;
            color: #fff;
            text-align: center;
        }
        .auto-style4 {
            font-weight: bold;
            color: #fff;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
                rel="stylesheet">
            <div class="menu">
                <input type="checkbox" id="toggle" />
                <label id="show-menu" for="toggle">
                    <div class="btn">
                        <i class="material-icons md-36 toggleBtn menuBtn">menu</i>
                        <i class="material-icons md-36 toggleBtn closeBtn">close</i>
                    </div>
                    <a href="Menuprincipal.aspx" class="btn">
                        <i class="material-icons md-36">home</i>
                        <!-- Puedes usar un ícono de casa para representar "Inicio" -->
                        <span>Inicio</span>
                    </a>
                    <a href="Agente_Vista.aspx" class="btn">
                        <i class="material-icons md-36">people</i>
                        <!-- Ícono para representar "Agentes" -->
                        <span>Agentes</span>
                    </a>
                    <a href="Clientes_View.aspx" class="btn">
                        <i class="material-icons md-36">person</i>
                        <!-- Ícono para representar "Clientes" -->
                        <span>Clientes</span>
                    </a>
                     <a href="Salir.aspx" class="btn">
                        <i class="material-icons md-36">close</i>
                        <!-- Ícono para representar "Salir" -->
                        <span>Salir</span>
                    </a>
                </label>
            </div>
        </div>

        <div>
            <h1 class="titulo">&nbsp;Página de Inicio - Bienvenido </h1>
            <h1 class="auto-style3"><span class="auto-style2">creado por Alois Buschor</span> </h1>
            <h1 class="auto-style4">Dale Click al Circulo para elegir opciones </h1>
            <!-- Título de la página de inicio -->
        </div>
    </form>
</body>
</html>

