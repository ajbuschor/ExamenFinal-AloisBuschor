using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal.Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usuario = username.Value;
            string contraseña= password.Value;

            string connectionString = ConfigurationManager.ConnectionStrings["examenfinal"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(1) FROM Agentes WHERE Nombre = @Usuario AND Email = @Contraseña";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Usuario", usuario);
                    command.Parameters.AddWithValue("@Contraseña", contraseña);

                    connection.Open();
                    int count = Convert.ToInt32(command.ExecuteScalar());

                    if (count == 1)
                    {
                        // Autenticación exitosa
                        Session["Usuario"] = usuario;
                        Response.Redirect("Menuprincipal.aspx");
                        //Response.Redirect("../PagMaestras/MenuPrin.aspx");

                    }
                    else
                    {
                        // Autenticación fallida
                        lblMensaje.Text = "Usuario o contraseña incorrectos.";
                    }
                }
            }

        }
    }
}