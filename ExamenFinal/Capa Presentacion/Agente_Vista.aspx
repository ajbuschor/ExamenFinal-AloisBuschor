<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agente_Vista.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Agente_Vista" %>


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
            width: 458px;
        }

        .auto-style2 {
            margin-top: 0px;
        }

        .auto-style3 {
            height: 2px;
            width: 98%;
        }

        .auto-style4 {
            width: 91%;
            height: 4px;
        }

        .auto-style5 {
            height: 1px;
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
            <div>
                <h1>Gestión de Agentes</h1>
            </div>
            <label for="nombre">
                <br />
                Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <br>
            <label for="email">
                <br />
                Email:</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br>
            <label for="telefono">
                <br />
                Teléfono:</label><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="bAgregar" runat="server" Height="38px" OnClick="bAgregar_Click" Text="Agregar Agente" Width="458px" />
            <br />
            &nbsp;<br>
            <button type="submit" class="auto-style4"></button>
            <label for="idBorrar">
                <br />
                ID del Agente:</label><asp:TextBox ID="txtidAgente" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="bBorrar" runat="server" Height="32px" OnClick="bBorrar_Click" Text="Borrar Agente" Width="458px" />
            <br />
            &nbsp;<br>
            <button type="submit" class="auto-style3"></button>
            <label for="idModificar">
                <br />
                ID del Agente:</label>
            <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            <br>
            <label for="nombreModificar">
                Nuevo Nombre:</label><asp:TextBox ID="txtNombreA" runat="server"></asp:TextBox>
            &nbsp;<br>
            <label for="emailModificar">
                Nuevo Email:</label><asp:TextBox ID="txtEmailA" runat="server"></asp:TextBox>
            &nbsp;<br>
            <label for="telefonoModificar">
                Nuevo Teléfono:</label><asp:TextBox ID="txtTelefonoA" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="bModificar" runat="server" Height="37px" OnClick="bModificar_Click" Text="Modificar Agente" Width="458px" />
            <br />
            <br>
            <button type="submit" class="auto-style5"></button>
            <br />
            <br />
        </div>

        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Height="160px" Width="459px">
        </asp:GridView>

        <asp:Table ID="Table1" runat="server">
        </asp:Table>
    </form>


    <script>
        function AgregarAgente() {
            var nombre = document.getElementById("nombre").value;
            var email = document.getElementById("email").value;
            var telefono = document.getElementById("telefono").value;

            // Aquí enviar la información del nuevo agente al servidor para agregarlo a la base de datos
            console.log("Nuevo agente:");
            console.log("Nombre: " + nombre);
            console.log("Email: " + email);
            console.log("Teléfono: " + telefono);

            // Limpiar el formulario después de agregar el agente
            document.getElementById("formAgregarAgente").reset();
        }

        function BorrarAgente() {
            var idBorrar = document.getElementById("idBorrar").value;

            // Aquí enviar la solicitud al servidor para borrar el agente con el ID proporcionado
            console.log("Borrar agente con ID: " + idBorrar);

            // Limpiar el formulario después de borrar el agente
            document.getElementById("formBorrarAgente").reset();
        }

        function ModificarAgente() {
            var idModificar = document.getElementById("idModificar").value;
            var nombre = document.getElementById("nombreModificar").value;
            var email = document.getElementById("emailModificar").value;
            var telefono = document.getElementById("telefonoModificar").value;

            // Aquí enviar la información actualizada del agente al servidor para modificarlo en la base de datos
            console.log("Modificar agente con ID: " + idModificar);
            console.log("Nuevo nombre: " + nombre);
            console.log("Nuevo email: " + email);
            console.log("Nuevo teléfono: " + telefono);

            // Limpiar el formulario después de modificar el agente
            document.getElementById("formModificarAgente").reset();
        }
    </script>
    </form>
</body>
</html>

