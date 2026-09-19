using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_11
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            string localidad = txtLocalidad.Text.Trim();

            bool yaExiste = false;
            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (item.Text.Equals(localidad, StringComparison.OrdinalIgnoreCase))
                {
                    yaExiste = true;
                    break;
                }
            }

            if (yaExiste)
            {
                lblMensajeLocalidad.Text = "Esa localidad ya fue ingresada.";
            }
            else
            {
                lblMensajeLocalidad.Text = "";
                ddlLocalidades.Items.Add(new ListItem(localidad));
                txtLocalidad.Text = "";
            }
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
    }
}