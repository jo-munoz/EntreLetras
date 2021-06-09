using System;
using System.Security.Cryptography;
using System.Text;

namespace JuegoDidactico.Logica.Segurity
{
    public class Encrypt
    {
        static string Dato = "";
        static string Dato_Saliente = "";

        public static string Encryption(string x)
        {
            try
            {
                Dato = x;
                byte[] llave;
                byte[] arreglo = Encoding.UTF8.GetBytes(Dato);

                MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
                llave = md5.ComputeHash(Encoding.UTF8.GetBytes(Dato_Saliente));
                md5.Clear();

                TripleDESCryptoServiceProvider tripledes = new TripleDESCryptoServiceProvider();
                tripledes.Key = llave;
                tripledes.Mode = CipherMode.ECB;
                tripledes.Padding = PaddingMode.PKCS7;
                ICryptoTransform convertir = tripledes.CreateEncryptor();
                byte[] resultado = convertir.TransformFinalBlock(arreglo, 0, arreglo.Length);
                tripledes.Clear();
                string stResultado = "";
                stResultado = Convert.ToBase64String(resultado, 0, resultado.Length);
                return stResultado;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
