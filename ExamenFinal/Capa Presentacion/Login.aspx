﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamenFinal.Presentacion.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            width: 300px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

            .login-container h2 {
                text-align: center;
                margin-bottom: 20px;
            }

        .form-group {
            margin-bottom: 20px;
        }

            .form-group label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
            }

            .form-group input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

        .btn-submit {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            .btn-submit:hover {
                background-color: #0056b3;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <label for="username">Usuario (Nombre de algun Agente):</label>
            <input type="text" id="username" name="username" runat="server" required>
        </div>
        <div class="form-group">
            <label for="password">Contraseña (Email del Agente):</label>
            <input type="password" id="password" name="password" runat="server" required>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" CssClass="btn-submit" OnClick="Button1_Click" />
        <asp:Label ID="lblMensaje" runat="server" ForeColor="Red" EnableViewState="false"></asp:Label><br />
    </form>
</body>

</html>
