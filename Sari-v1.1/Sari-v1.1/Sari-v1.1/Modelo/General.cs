using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using System.Data;
using Sari_v1._0.Controlador;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace Sari_v1._0.Modelo
{
    public class Direccion
    {
        public int idDireccion { get; set; }
        public int cp { get; set; }
        public String Colonia { get; set; }
        public String Municipio { get; set; }
        public String Estado { get; set; }
        public String Pais { get; set; }
        public int Num_int { get; set; }
        public int Num_ext { get; set; }
        public String NombreCalle { get; set; }
        public String TipoCalle { get; set; }

        public Direccion()
        {
            //idDireccion = 0;
            cp = 0;
            Colonia = "";
            Municipio = "";
            Estado = "";
            Pais = "";
            Num_int = 0;
            Num_ext = 0;
            NombreCalle = "";
            TipoCalle = "";

        }
        public Direccion(int id, int cpo, String col, String Mun, String Es, String Pa, int ni, int ne, String NC, String Tp)
        {
            //idDireccion = id;
            cp = cpo;
            Colonia = col;
            Municipio = Mun;
            Estado = Es;
            Pais = Pa;
            Num_int = ni;
            Num_ext = ne;
            NombreCalle = NC;
            TipoCalle = Tp;
        }
        public int AltaDireccion()
        {
            SqlCommand Comando;
            Conexion inserta = new Conexion();
            int regresa = 0;
            if (inserta.Conectar())
            {
                String comando = "EXEC InsertaDireccion " + cp + ",'" + Colonia + "','" + Municipio + "','" + Estado + "','" + Pais + "'," + Num_int + "," + Num_ext + ",'" + NombreCalle + "','" + TipoCalle + "'";
                Comando = inserta.construye_command(comando);
                if ((inserta.ejecutanonquery()) != 0)
                    regresa = 1;
                else
                    regresa = 0;
                Comando.Connection.Close();
                inserta.desconectar();
            }
            else
                regresa = -1;
            return regresa;
        }
       /* public int comando()
        {
            SqlCommand Comando;
            Conexion inserta = new Conexion();
            
            if (inserta.Conectar())
            {
                String comando = "EXEC InsertaDireccion " + cp + ",'" + Colonia + "','" + Municipio + "','" + Estado + "','" + Pais + "'," + Num_int + "," + Num_ext + ",'" + NombreCalle + "','" + TipoCalle + "'";
                Comando = inserta.construye_command(comando);
                if ((inserta.ejecutanonquery()) != 0)
                    regresa = 1;
                else
                    regresa = 0;
                Comando.Connection.Close();
                inserta.desconectar();
            }
            else
                regresa = -1;
            return regresa;
        }*/

    }

    public class Persona
    {
        public int idPersona { get; set; }
        public int idDireccion { get; set; }
        public String Nss { get; set; }
        public String Genero { get; set; }
        public int Edad { get; set; }
        public DateTime Fecha_nac { get; set; }
        public String ApM { get; set; }
        public String ApP { get; set; }
        public String Nombrep { get; set; }
        public String Curp { get; set; }


        public Persona()
        {
            idPersona = 0;
            idDireccion = 0;
            Nss = "";
            Genero = "";
            Edad = 0;
            Fecha_nac = DateTime.Now;
            ApM = "";
            ApP = "";
            Nombrep = "";
            Curp = "";
        }
        public Persona(int idP, int idD, string nss, string gen, int ed, DateTime fecha, string apm, string app, string nombre, string curp)
        {
            idPersona = idP;
            idDireccion = idD;
            Nss = nss;
            Genero = gen;
            Edad = ed;
            Fecha_nac = fecha;
            ApM = apm;
            ApP = app;
            Nombrep = nombre;
            Curp = curp;
        }

        public int AltaPersona()
        {
            SqlCommand Comando;
            Conexion inserta = new Conexion();
            int regresa = 0;
            if (inserta.Conectar())
            {
                String comando = "EXEC InsertaPersona '" + Nss + "','" + Genero + "'," + Edad + ",'" + Fecha_nac + "','" + ApM + "'," + ApP + "," + Nombrep + ",'" + Curp +  "'";
                Comando = inserta.construye_command(comando);
                if ((inserta.ejecutanonquery()) != 0)
                    regresa = 1;
                else
                    regresa = 0;
                Comando.Connection.Close();
                inserta.desconectar();
            }
            else
                regresa = -1;
            return regresa;
        }

    }
}