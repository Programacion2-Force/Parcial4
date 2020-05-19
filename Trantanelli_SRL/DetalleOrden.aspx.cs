using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trantanelli_SRL
{
    public partial class DetalleOrden : System.Web.UI.Page
    {
        int cantidad;
        double monto;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                if (!Page.IsPostBack)
                {
                    if (Request.Params["cantidad"] != null)
                    {
                        cantidad = Convert.ToInt32(Request.QueryString["cantidad"]);
                    }
                    else
                    {
                        cantidad = 0;
                    }


                    if (Request.Params["monto"] != null)
                    {
                        monto = Convert.ToDouble(Request.QueryString["monto"]);
                    }
                    else
                    {
                        monto = 0;
                    }

                    Label1.Text = cantidad.ToString();
                    Label2.Text = monto.ToString();

                }
                else
                {
                    cantidad = Convert.ToInt32(Label1.Text);
                    monto = Convert.ToDouble(Label2.Text);
                }
                
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            
        }
        OrdenBLL objBLL = new OrdenBLL();
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            string id;
            LinkButton btnEliminar = (LinkButton)sender;
            id = btnEliminar.CommandArgument;
            monto = monto - Precio((Convert.ToInt32(id)));
            objBLL.EliminarOrden(Convert.ToInt32(id));
            cantidad = cantidad - 1;
            GridView1.DataBind();
            Label1.Text = cantidad.ToString();
            Label2.Text = monto.ToString();
        }

        public double Precio(int id)
        {
            double prec = 0;
            App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter adaptador = new App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter();
            App_Code.DAL.OrdenDS.orden1DataTable tabla = adaptador.MostrarOrdId(id);
            foreach (App_Code.DAL.OrdenDS.orden1Row filas in tabla)
            {
                if (filas.idorden == id)
                {
                    prec = Convert.ToDouble(filas.precio);
                }

            }
            return prec;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
            //HttpCookie Monto = new HttpCookie("monto");
            //Monto.Value = monto.ToString();
            //Response.Cookies.Add(Monto);
            //
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("ListaProductos.aspx?cant="+cantidad.ToString()+"&mont="+monto.ToString());
        }
    }
}