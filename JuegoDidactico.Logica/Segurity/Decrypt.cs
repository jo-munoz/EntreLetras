using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace JuegoDidactico.Logica.Segurity
{
    public class Decrypt
    {
        static String Dato = "";
        static String Dato_Saliente = "";

        public static String Description(String x)
        {
            Dato = x;

            byte[] llave;

            byte[] arreglo = Convert.FromBase64String(Dato);

            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            llave = md5.ComputeHash(Encoding.UTF8.GetBytes(Dato_Saliente));
            md5.Clear();

            TripleDESCryptoServiceProvider tripledes = new TripleDESCryptoServiceProvider();
            tripledes.Key = llave;
            tripledes.Mode = CipherMode.ECB;
            tripledes.Padding = PaddingMode.PKCS7;
            ICryptoTransform convertir = tripledes.CreateDecryptor();
            byte[] resultado = convertir.TransformFinalBlock(arreglo, 0, arreglo.Length);
            tripledes.Clear();

            string cadena_descifrada = Encoding.UTF8.GetString(resultado);
            return cadena_descifrada;
        }
    }
}
