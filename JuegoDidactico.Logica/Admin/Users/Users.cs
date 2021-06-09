using JuegoDidactico.Conexion.Conexion;
using System;
using System.Data;
using System.Data.SqlClient;

namespace JuegoDidactico.Logica.Admin.Users
{
    public class Users
    {
        public static string stUserInsert(string stUser, string stPassword, string stName)
        {
            SqlConnection _SqlConnection = csConexion.getConexion();
            try
            {
                SqlCommand _SqlCommand = new SqlCommand("spUserInsert", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.Parameters.Add(new SqlParameter("@USER", stUser));
                _SqlCommand.Parameters.Add(new SqlParameter("@PASSWORD", stPassword));
                _SqlCommand.Parameters.Add(new SqlParameter("@NAME", stName));

                SqlParameter _SqlParameter = new SqlParameter();
                _SqlParameter.ParameterName = "@cMensaje";
                _SqlParameter.SqlDbType = SqlDbType.VarChar;
                _SqlParameter.Size = 100;
                _SqlParameter.Direction = ParameterDirection.Output;

                _SqlCommand.Parameters.Add(_SqlParameter);
                _SqlCommand.ExecuteNonQuery();

                return _SqlParameter.Value.ToString();
            }
            catch(Exception ex) { throw ex; }
            finally { _SqlConnection.Close(); };
        }

        public static SqlDataReader stUserSearch(string stConsecutive)
        {
            SqlConnection _SqlConnection = csConexion.getConexion();
            try
            {
                SqlCommand _SqlCommand = new SqlCommand("spUserSearch", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.Parameters.Add(new SqlParameter("@CONSECUTIVE", stConsecutive));

                SqlParameter _SqlParameter = new SqlParameter();
                _SqlParameter.ParameterName = "@cMensaje";
                _SqlParameter.SqlDbType = SqlDbType.VarChar;
                _SqlParameter.Size = 100;
                _SqlParameter.Direction = ParameterDirection.Output;
                _SqlCommand.Parameters.Add(_SqlParameter);

                SqlDataReader _SqlDataReader = _SqlCommand.ExecuteReader(CommandBehavior.CloseConnection);
                return _SqlDataReader;
            }
            catch (Exception ex) { throw ex; }            
        }
    }
}
