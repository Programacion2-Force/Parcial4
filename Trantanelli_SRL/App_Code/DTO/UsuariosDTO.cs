using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trantanelli_SRL
{
    public class UsuariosDTO
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string username { get; set; }
        public string passw { get; set; }
        public string email { get; set; }
    }
}