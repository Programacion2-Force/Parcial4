using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trantanelli_SRL
{
    public partial class CierreSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Session.Remove("Usuario");
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}