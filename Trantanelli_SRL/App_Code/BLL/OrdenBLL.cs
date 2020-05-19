using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trantanelli_SRL
{
    public class OrdenBLL
    {
        public OrdenBLL()
        {

        }
        public static List<OrdenDTO> MostrarTodosProductos()

        {
            List<OrdenDTO> listarOrden = new List<OrdenDTO>();
            App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter adaptador = new App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter();
            App_Code.DAL.OrdenDS.orden1DataTable tabla = adaptador.MostrarOrd();
            foreach (App_Code.DAL.OrdenDS.orden1Row filas in tabla)
            {
                listarOrden.Add(filaDTOOrden(filas));
            }

            return listarOrden;
        }

        private static OrdenDTO filaDTOOrden(App_Code.DAL.OrdenDS.orden1Row filas)
        {
            OrdenDTO objOrden = new OrdenDTO();

            objOrden.idorden = filas.idorden;
            objOrden.id_producto = filas.id_producto;
            objOrden.usuario = filas.usuario;
            objOrden.producto = filas.nombre;
            objOrden.precio = Convert.ToDouble(filas.precio);
            
            return objOrden;
        }

        public static OrdenDTO MostrarOrdenUsuario(int idOrden)
        {
            App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter adaptador = new App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter();
            App_Code.DAL.OrdenDS.orden1DataTable tabla = adaptador.MostrarOrdId(idOrden);

            if (tabla.Rows.Count == 0)
            {
                return null;
            }
            return filaDTOOrden(tabla[0]);

        }

        public void InsertarOrden(int idprod, string usuario, string producto, double Precio_unitario)
        {
            App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter adaptador = new App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter();
            adaptador.Insert(idprod, usuario, producto, Precio_unitario);
        }

        public void EliminarOrden(int id)
        {
            App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter adaptador = new App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter();
            adaptador.DeleteOrd(id);
        }

        public void TruncarOrden()
        {
            App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter adaptador = new App_Code.DAL.OrdenDSTableAdapters.orden1TableAdapter();
            adaptador.TruncateTableOrden();
        }

        //public void ActualizarProducto(int id, string Nombre, int IdCategoria, decimal Precio_unitario, string Detalle)
        //{
        //    App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
        //    adaptador.Update(Nombre, IdCategoria, Precio_unitario, Detalle, id);
        //}
    }
}