<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes_View.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Clientes_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: black;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        form {
            width: 300px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            button[type="submit"]:hover {
                background-color: #0056b3;
            }
        .auto-style1 {
            width: 432px;
        }
        .auto-style2 {
            height: 1px;
        }
        .auto-style3 {
            height: 2px;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
                rel="stylesheet">
            <div class="menu">
                &nbsp;<label id="show-menu" for="toggle"><a href="Menuprincipal.aspx" class="btn"><i class="material-icons md-36">home</i>
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
        <h1>Gestión de Clientes</h1>

            <label for="nombre">Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br>
            <label for="email">Email:</label><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;<br>
            <label for="telefono">Teléfono:</label><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
&nbsp;<br />
        <asp:Button ID="bAgregar" runat="server" Text="Agregar Cliente" Width="429px" Height="33px" OnClick="bAgregar_Click1" />
        <br />
        <br>
            <button type="submit" class="auto-style2"></button>
            <label for="idBorrar">
        <br />
        ID del Cliente:</label><asp:TextBox ID="txtIDCliente" runat="server"></asp:TextBox>
&nbsp;<br />
        <asp:Button ID="bBorrar" runat="server" Text="Borrar Cliente" Width="429px" Height="34px" OnClick="bBorrar_Click1" />
        <br />
        <br>
            <button type="submit" class="auto-style2"></button>
            <label for="idModificar">
        <br />
        ID del Cliente:</label>
            <asp:TextBox ID="txtidClienteA" runat="server"></asp:TextBox>
        <br>
            <label for="nombreModificar">
        <br />
        Nuevo Nombre:</label>
            <asp:TextBox ID="txtNombreA" runat="server"></asp:TextBox>
        <br>
            <label for="emailModificar">
        <br />
        Nuevo Email:</label><asp:TextBox ID="txtEmailA" runat="server"></asp:TextBox>
&nbsp;<br>
            <label for="telefonoModificar">
        <br />
        Nuevo Teléfono:</label>
        <asp:TextBox ID="txtTelefonoA" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="bModificar" runat="server" Text="Modificar Cliente" Width="428px" Height="35px" OnClick="bModificar_Click1" />
        <br />
        <br>
            <button type="submit" class="auto-style3"></button>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="406px">
        </asp:GridView>
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
        <br />
        <br />
    </form>

        <script>
            function agregarCliente() {
                var nombre = document.getElementById("nombre").value;
                var email = document.getElementById("email").value;
                var telefono = document.getElementById("telefono").value;

                // Aquí enviar la información del nuevo cliente al servidor para agregarlo a la base de datos
                console.log("Nuevo cliente:");
                console.log("Nombre: " + nombre);
                console.log("Email: " + email);
                console.log("Teléfono: " + telefono);

                // Limpiar el formulario después de agregar el cliente
                document.getElementById("formAgregarCliente").reset();
            }

            function borrarCliente() {
                var idBorrar = document.getElementById("idBorrar").value;

                // Aquí enviar la solicitud al servidor para borrar el cliente con el ID proporcionado
                console.log("Borrar cliente con ID: " + idBorrar);

                // Limpiar el formulario después de borrar el cliente
                document.getElementById("formBorrarCliente").reset();
            }

            function modificarCliente() {
                var idModificar = document.getElementById("idModificar").value;
                var nombre = document.getElementById("nombreModificar").value;
                var email = document.getElementById("emailModificar").value;
                var telefono = document.getElementById("telefonoModificar").value;
            }
    </script>
    </form>
</body>
</html>
