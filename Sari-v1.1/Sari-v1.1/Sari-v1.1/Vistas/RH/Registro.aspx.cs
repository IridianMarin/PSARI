using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Sari_v1._0.Modelo;
using System.Windows.Forms;


namespace Sari_v1._1.Vistas.RH
{
    public partial class Registro : System.Web.UI.Page
    {
        String m="";
        Direccion objDireccion = new Direccion();
        private int TextBox2;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            objDireccion.Colonia = Convert.ToString(inputColo); 
            objDireccion.Estado = Convert.ToString(inputEs);
            objDireccion.Municipio = Convert.ToString(inputMuni);
            objDireccion.cp = Convert.ToInt32(inputCP.ToString());
            objDireccion.NombreCalle = Convert.ToString(inputCalle);
            objDireccion.Pais = Convert.ToString(inputPa);
            int x = Convert.ToInt32(inputNI.ToString());
            objDireccion.Num_ext = Convert.ToInt32(inputNExt.ToString());
            
            objDireccion.Num_int = Convert.ToInt32(inputNI.ToString());

            
            int r = objDireccion.AltaDireccion();
            if (r == 1)
            {
                MessageBox.Show("Guardado correctamente, continua al paso 2");
                Close();
            }
            else if (r == 0)
            {
                MessageBox.Show("No se pudo hacer el registro");
            }
            else
            {
                MessageBox.Show("Error con la base de datos");
            }
        }

        private void Close()
        {
            throw new NotImplementedException();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

        }

        public int inputCP { get; set; }

        public object inputColo { get; set; }

        public object inputMuni { get; set; }

        public object inputEs { get; set; }

        public object inputNExt { get; set; }

        public object inputNI { get; set; }

        public string inputCalle { get; set; }

        public string inputPa { get; set; }

        public string option { get; set; }

        public int TextBox1 { get; set; }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}