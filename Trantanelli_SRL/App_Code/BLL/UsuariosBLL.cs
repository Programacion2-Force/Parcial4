using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Trantanelli_SRL
{
    public class UsuariosBLL
    {
        public UsuariosBLL()
        {

        }
        public static List<UsuariosDTO> MostrarTodosUsuarios()

        {
            List<UsuariosDTO> listarUsuarios = new List<UsuariosDTO>();
            App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter adaptador = new App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter();
            App_Code.DAL.UsuariosDS.USUARIOSDataTable tabla = adaptador.MostrarUsuarios();

            foreach (App_Code.DAL.UsuariosDS.USUARIOSRow filas in tabla)
            {
                listarUsuarios.Add(filaDTOUsuarios(filas));
            }

            return listarUsuarios;
        }

        private static UsuariosDTO filaDTOUsuarios(App_Code.DAL.UsuariosDS.USUARIOSRow filas)
        {
            UsuariosDTO objUsuario = new UsuariosDTO();

            objUsuario.id = filas.ID;
            objUsuario.nombre = filas.nombre;
            objUsuario.apellido = filas.apellido;
            objUsuario.username = filas.username;
            objUsuario.passw = filas.pass;
            objUsuario.email = filas.email;


            return objUsuario;
        }

        private static string UsuarioActivo(App_Code.DAL.UsuariosDS.USUARIOSRow filas)
        {
            string usActivo;
            usActivo = filas.username;


            return usActivo;
        }

        public bool UserLog(string username, string pass)
        {
            App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter adaptador = new App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter();
            App_Code.DAL.UsuariosDS.USUARIOSDataTable tabla = adaptador.UserLog(username,pass);
            if (tabla.Rows.Count > 0 && username.Equals(UsuarioActivo(tabla[0]).ToString()))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static UsuariosDTO MostrarUsuarioID(int id)
        {
            App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter adaptador = new App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter();
            App_Code.DAL.UsuariosDS.USUARIOSDataTable tabla = adaptador.MostrarUsuarioID(id);

            if (tabla.Rows.Count == 0)
            {
                return null;
            }
            return filaDTOUsuarios(tabla[0]);

        }

        public void InsertarUsuario(string Nombre, string Apellido, string username, string passw, string email)
        {
            App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter adaptador = new App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter();
            adaptador.Insert(Nombre, Apellido, username, passw, email);
        }

        public void EliminarUsuario(int id)
        {
            App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter adaptador = new App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter();
            adaptador.Delete(id);
        }

        public void ActualizarUsuario(int id, string Nombre, string Apellido, string username, string passw, string email)
        {
            App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter adaptador = new App_Code.DAL.UsuariosDSTableAdapters.USUARIOSTableAdapter();
            adaptador.Update(Nombre, Apellido, username, passw, email, id);
        }
    }
}