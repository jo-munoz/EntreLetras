using JuegoDidactico.Conexion.Conexion;
using JuegoDidactico.Logica.Segurity;
using System;
using System.Data;
using System.Data.SqlClient;

namespace JuegoDidactico.Logica.Login
{
    public class csLogin
    {
        public static SqlDataReader Login(string stUser, string stPassword)
        {
            try
            {
                string usu = stUser;
                string pas = stPassword;

                pas = Encrypt.Encryption(pas);

                SqlConnection _SqlConnection = csConexion.getConexion();
                SqlCommand _SqlCommand = new SqlCommand("spLogin", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@USER", stUser);
                SqlParameter p2 = new SqlParameter("@PASSWORD", pas);
                _SqlCommand.Parameters.Add(p1);
                _SqlCommand.Parameters.Add(p2);

                SqlParameter _SqlParameter = new SqlParameter();
                _SqlParameter.ParameterName = "@cMensaje";
                _SqlParameter.SqlDbType = SqlDbType.VarChar;
                _SqlParameter.Size = 100;
                _SqlParameter.Direction = ParameterDirection.Output;

                _SqlCommand.Parameters.Add(_SqlParameter);

                SqlDataReader _SqlDataReader = _SqlCommand.ExecuteReader(CommandBehavior.CloseConnection);
                return _SqlDataReader;

            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}
