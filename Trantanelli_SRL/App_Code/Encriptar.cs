using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace Trantanelli_SRL
{
    public class Encriptar
    {
        public Encriptar()
        {

        }

        public string HashEncrip(string texto)
        {
            using (SHA1Managed encrip = new SHA1Managed())
            {
                var encript = encrip.ComputeHash(Encoding.UTF8.GetBytes(texto));
                var constructorHash = new StringBuilder(encript.Length * 2);
                foreach (byte abc in encript)
                {
                    constructorHash.Append(abc.ToString("X2"));
                }
                return constructorHash.ToString();
            }
        }
    }
}