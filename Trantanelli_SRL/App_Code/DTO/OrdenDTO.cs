using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trantanelli_SRL
{
    public class OrdenDTO
    {
        public int idorden { get; set; }
        public int id_producto { get; set; }
        public string usuario { get; set; }
        public string producto { get; set; }
        public double precio { get; set; }
    }
}