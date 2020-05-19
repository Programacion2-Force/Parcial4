using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trantanelli_SRL
{
    public class ProductosDTO
    {
        public int ID { get; set; }
        public string NOMBRE { get; set; }
        public int ID_CATEGORIA { get; set; }
        public double PRECIO_UNITARIO { get; set; }
        public string DETALLE { get; set; }
        public string CODIGO { get; set; }
    }
}