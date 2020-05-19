using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trantanelli_SRL
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrdenBLL truncar = new OrdenBLL();
            truncar.TruncarOrden();
            string user;
            if (Session["Usuario"] != null)
            {
                user = Session["Usuario"].ToString();
                Label1.Text = user;
                Label5.Text = "Salir";
                Label6.Visible = false;
            }
            else
            {
                Label5.Text = "Sign Up";
                Label6.Visible = true;
                Label1.Text = "";
            }

        }
    }
}