using System;
using System.Data.SqlClient;

namespace JuegoDidactico.Conexion.Conexion
{
    public static class csConexion
    {
        public static SqlConnection getConexion()
        {
            try
            {
                //SqlConnection _SqlConnection = new SqlConnection(@"Data Source=TOSHIBA\SQLEXPRESS;Initial Catalog=bdEntreLetras;User ID=prueba;Password=prueba");
                SqlConnection _SqlConnection = new SqlConnection(@"Data Source=SERVIDOR2;Initial Catalog=bdEntreLetras;User ID=UserEntreLetras;Password=LeTr@s 2019*+");               

                _SqlConnection.Open();
                return _SqlConnection;
            }
            catch(Exception ex){
                return null;
            }
        }
    }
}
