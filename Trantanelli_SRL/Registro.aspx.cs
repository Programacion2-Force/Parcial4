using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trantanelli_SRL
{
    public partial class Registro : System.Web.UI.Page
    {
        Encriptar encripta = new Encriptar();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string pass, passw, nombre, apellido, username, email;
            pass = TextBox4.Text;
            passw = encripta.HashEncrip(pass);
            nombre = TextBox1.Text;
            apellido = TextBox2.Text;
            username = TextBox3.Text;
            pass = passw;
            email = TextBox5.Text;

            UsuariosBLL objUser = new UsuariosBLL();
            try
            {
                objUser.InsertarUsuario(nombre, apellido, username, pass, email);
                Response.Redirect("Login.aspx");
            }
            catch
            {

            }
        }
    }
}