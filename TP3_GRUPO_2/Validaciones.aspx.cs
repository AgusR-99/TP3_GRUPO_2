using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_2
{
    public partial class Validaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCitySend_Click(object sender, EventArgs e)
        {
            if (ValCityName.IsValid)
            {
                ValCityName.Text = "";
                var newItem = new ListItem(txtCityName.Text);
                if (!ddlUserCity.Items.Contains(newItem)) {
                    ddlUserCity.Items.Add(newItem);
                    txtCityName.Text = "";
                }
                else {
                    cvLocalidad.Text = "Localidad repetida";
                }
            }
            else ValCityName.Text = "";
        }

        protected void txtUserCp_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicio.aspx");
        }

        protected void btnUserSend_Click(object sender, EventArgs e)
        {
            if (rfvNombre.IsValid)
                if (rfvContrasenia.IsValid)
                    if (cvPassword.IsValid)
                        if (rfvReContrasenia.IsValid)
                            if (rfvCorreo.IsValid)
                                if (revCP.IsValid)
                                    if (rfvCP.IsValid)
                                        if(cvCP.IsValid)
                                        if (rfvLocalidades.IsValid)
                                            lblBienvenida.Text = "Bienvenido Usuario " + txtUsername.Text;
        }

        protected void cvCP_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length > 3)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        //  protected System.Void btnUserSend_Click(System.Object sender, System.EventArgs e)
        // {

        //        }
    }
}