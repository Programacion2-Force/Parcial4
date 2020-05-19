using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trantanelli_SRL
{
    public partial class Factura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double total=0.00;
            if (Session["Usuario"] != null)
            {
                if (!Page.IsPostBack)
                {
                    if (Request.Params["total"] != null)
                    {
                        total = Convert.ToDouble(Request.QueryString["total"]);
                    }
                    else
                    {
                        total = 0;
                    }
                    Label1.Text = total.ToString();
                }

            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("TransaccionPago.aspx?valor="+Label1.Text);
        }
    }
}