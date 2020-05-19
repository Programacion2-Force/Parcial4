using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trantanelli_SRL
{
    public partial class ListaProductos : System.Web.UI.Page
    {
        double valor;
        int cantidad;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Label2.Text = Session["Usuario"].ToString();
                if (!Page.IsPostBack)
                {

                    if (Request.Params["cant"] != null)
                    {
                        cantidad = Convert.ToInt32(Request.QueryString["cant"]);
                    }
                    else
                    {
                        cantidad = 0;
                    }
                    if (Request.Params["mont"] != null)
                    {
                        valor = Convert.ToDouble(Request.QueryString["mont"]);
                    }
                    else
                    {
                        valor = 0.00;
                    }

                    Label1.Text = cantidad.ToString();
                    Label3.Text = valor.ToString();
                }
                else
                {

                    cantidad = Convert.ToInt32(Label1.Text);
                    valor = Convert.ToDouble(Label3.Text);
                    
                }
                
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        public void CargarCompras()
        {
            cantidad = cantidad + 1;
            Label1.Text = cantidad.ToString();
        }
        public void btnAgregar_Click(object sender, EventArgs e)
        {
            string id;
            LinkButton btnAgregar = (LinkButton)sender;
            id = btnAgregar.CommandArgument;
            valor = valor + Precio(Convert.ToInt32(id));
            Label3.Text = valor.ToString();
            LlenarOrden(Label2.Text, Convert.ToInt32(id));
            CargarCompras();

        }

        //Obtener el precio desde la tabla Productos
        public double Precio(int id)
        {
            double prec = 0;
            App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
            App_Code.DAL.ProductosDS.ProductosDataTable tabla = adaptador.MostrarTodosProductos();
            foreach (App_Code.DAL.ProductosDS.ProductosRow filas in tabla)
            {
                if (filas.id_producto == id)
                {
                    prec = Convert.ToDouble(filas.precio_unitario);
                }

            }
            return prec;
        }

        //Cargar un registro a la tabla de Ordenes
        public void LlenarOrden(string cod, int id)
        {
            OrdenBLL objOrden = new OrdenBLL();
            string codigo = cod;
            string producto = "";
            double precio = 0.00;
            int idOrden = 0;
            App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
            App_Code.DAL.ProductosDS.ProductosDataTable tabla = adaptador.MostrarTodosProductos();
            foreach (App_Code.DAL.ProductosDS.ProductosRow filas in tabla)
            {
                if (filas.id_producto == id)
                {
                    precio = Convert.ToDouble(filas.precio_unitario);
                    producto = filas.nombre_producto;
                    
                }

            }
            objOrden.InsertarOrden(id, cod, producto, precio);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DetalleOrden.aspx?cantidad="+Label1.Text+"&monto="+Label3.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Factura.aspx?total=" + Label3.Text);
        }
    }
}