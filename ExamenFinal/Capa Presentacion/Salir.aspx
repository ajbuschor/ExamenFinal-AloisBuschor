<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Salir.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Salir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salir</title>
    <script type="text/javascript">
        function confirmarSalida() {
            if (confirm("¿Estás seguro de que deseas salir?")) {
                // Si el usuario confirma, redirigir a la página de inicio de sesión
                window.location.href = "Login.aspx";
            } else {
                // Si el usuario cancela, redirigir a la página anterior
                history.back();
            }
        }
    </script>
</head>
<body onload="confirmarSalida()">
</body>
</html>
