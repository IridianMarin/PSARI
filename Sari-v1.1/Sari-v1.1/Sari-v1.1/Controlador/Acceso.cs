using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Forms;

namespace Sari_v1._0.Controlador
{
    public class Acceso
    {
        /*
        public bool acceso(String usu, String contra)
        {
            SqlConnection miconexion = new SqlConnection(@"Data Source = local; Initial catalog=SARI; Integrated security=true");
            miconexion.Open();
            /*Conexion conecta = new Conexion();
            conecta.Conectar();
            SqlCommand consulta = new SqlCommand("select * from Usuario where CorreoInicio = '" + usu + "'and Password1='" + contra + "'", miconexion);
            SqlDataReader ejecuta = consulta.ExecuteReader();

            if (ejecuta.Read() == true)
            {
                miconexion.Close();
                return true;

            }
            else
            {
                MessageBox.Show("                          Acceso Denegado,\r\t¡El usuario no esta registrado!");
                miconexion.Close();
            }
            return false;
        }*/
    }

}