using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trantanelli_SRL
{
    public partial class TransaccionPago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double total = 0.00;
            if (Session["Usuario"] != null)
            {
                if (!Page.IsPostBack)
                {
                    if (Request.Params["valor"] != null)
                    {
                        total = Convert.ToDouble(Request.QueryString["valor"]);
                    }
                    else
                    {
                        total = 0;
                    }
                    Label2.Text = total.ToString();
                }

            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            RadioButtonList1.Enabled = false;
            if (RadioButtonList1.SelectedItem.ToString() == "Tarjeta")
            {
                Panel1.Visible = true;

            }
            else
            {
                Panel1.Visible = false;
            }
            Panel2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pagado.aspx");
        }
    }
}