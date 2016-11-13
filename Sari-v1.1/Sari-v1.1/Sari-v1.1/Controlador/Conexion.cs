using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.Windows.Forms;
namespace Sari_v1._0.Controlador
{
    public class Conexion
    {

        public SqlDataReader dr { get; set; } //
        public SqlCommand cadena_sql { get; set; }
        SqlDataAdapter adapt; // data set
        SqlConnection conn; // cadena de conexion
        DataTable dt;
        string m;
        public bool Conectar()
        {

            conn = new SqlConnection();
            conn.ConnectionString = @"Data source = local; Initial catalog = SARI; Integrated security=true"; // nombre de servidor y nombre de la base de datos
            try
            {
                conn.Open();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
        public void desconectar()
        {
            conn.Close();
        }

        public void construye_reader(string cadena)
        {
            cadena_sql = new SqlCommand();
            cadena_sql.Connection = conn;
            cadena_sql.CommandText = cadena;
        }

        public SqlDataReader ejecuta_reader()
        {
            try { dr = cadena_sql.ExecuteReader(); return dr; }
            catch (Exception er) { MessageBox.Show("Error al ejecutar el reader " + er.Message); return null; }
        }
        public SqlCommand construye_command(string cadena)
        {
            cadena_sql = new SqlCommand(cadena, conn);
            return cadena_sql;
        }

        public int ejecutanonquery()
        {
            int afectados;
            try { afectados = cadena_sql.ExecuteNonQuery(); return afectados; }
            catch (Exception er) { MessageBox.Show("Error al ejecutar el reader " + er.Message); return 0; }

        }
        public SqlDataAdapter construye_adapter(string cadena)
        {
            adapt = new SqlDataAdapter(cadena, conn);
            return adapt;
        }
        public DataRow extrae_registro(SqlDataAdapter adapter, string tabla)
        {
            DataSet ds = new DataSet();
            DataRow fila;
            try { adapter.Fill(ds, tabla); DataTable mitabla = ds.Tables[tabla]; fila = mitabla.Rows[0]; return fila; }
            catch (Exception er) { MessageBox.Show("Error al extraer el registro " + er.Message); return null; }

        }
        public DataSet consultaDataSet(string consulta)
        {
            DataSet ds = new DataSet();
            SqlCommand comando = new SqlCommand();
            SqlDataAdapter adapter = new SqlDataAdapter();
            comando.CommandText = consulta;
            comando.Connection = conn;
            adapter.SelectCommand = comando;
            try { adapter.Fill(ds); return ds; }
            catch (Exception er) { MessageBox.Show("No se pudo crear el dataset " + er.Message); return null; }
        }
    }

}