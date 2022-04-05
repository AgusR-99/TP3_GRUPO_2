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

        }

        protected void btnCitySend_Click(object sender, EventArgs e)
        {
            if (ValCityName.IsValid)
            {
                var newItem = new ListItem(txtCityName.Text);
                if (!ddlUserCity.Items.Contains(newItem))
                    ddlUserCity.Items.Add(newItem);
            }
        }
    }
}