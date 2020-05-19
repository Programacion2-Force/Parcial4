using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trantanelli_SRL
{
    public class ProductosBLL
    {
        public ProductosBLL()
        {

        }
        public static List<ProductosDTO> MostrarTodosProductos()

        {
            List<ProductosDTO> listarProductos = new List<ProductosDTO>();
            App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
            App_Code.DAL.ProductosDS.ProductosDataTable tabla = adaptador.MostrarTodosProductos();

            foreach (App_Code.DAL.ProductosDS.ProductosRow filas in tabla)
            {
                listarProductos.Add(filaDTOProducto(filas));
            }

            return listarProductos;
        }

        private static ProductosDTO filaDTOProducto(App_Code.DAL.ProductosDS.ProductosRow filas)
        {
            ProductosDTO objProducto = new ProductosDTO();

            objProducto.ID = filas.id_producto;
            objProducto.NOMBRE = filas.nombre_producto;
            objProducto.ID_CATEGORIA = filas.id_categoria;
            objProducto.PRECIO_UNITARIO = Convert.ToDouble(filas.precio_unitario);
            objProducto.DETALLE = filas.detalles;
            objProducto.CODIGO = filas.codigo;

            return objProducto;
        }

        public static ProductosDTO MostrarProductoID(int id)
        {
            App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
            App_Code.DAL.ProductosDS.ProductosDataTable tabla = adaptador.MostrarProductosID(id);

            if (tabla.Rows.Count == 0)
            {
                return null;
            }
            return filaDTOProducto(tabla[0]);

        }

        public void InsertarProducto(string Nombre, int IdCategoria, decimal Precio_unitario, string Detalle)
        {
            App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
            adaptador.Insert(Nombre, IdCategoria, Precio_unitario, Detalle);
        }

        public void EliminarProducto(int id)
        {
            App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
            adaptador.Delete(id);
        }

        public void ActualizarProducto(int id, string Nombre, int IdCategoria, decimal Precio_unitario, string Detalle)
        {
            App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter adaptador = new App_Code.DAL.ProductosDSTableAdapters.ProductosTableAdapter();
            adaptador.Update(Nombre, IdCategoria, Precio_unitario, Detalle, id);
        }
    }
}