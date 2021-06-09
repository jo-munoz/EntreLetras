using JuegoDidactico.Conexion.Conexion;
using System;
using System.Data;
using System.Data.SqlClient;

namespace JuegoDidactico.Logica.Level
{
    public class csLevel
    {
        public static string stLevelInsert(string stCod_User, string stLevel, string stResult, string stMatter)
        {
            SqlConnection _SqlConnection = csConexion.getConexion();
            try
            {
                SqlCommand _SqlCommand = new SqlCommand("spLevelInsert", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.Parameters.Add(new SqlParameter("@CODE_USER", stCod_User));
                _SqlCommand.Parameters.Add(new SqlParameter("@LEVEL", stLevel));
                _SqlCommand.Parameters.Add(new SqlParameter("@RESULT", stResult));
                _SqlCommand.Parameters.Add(new SqlParameter("@DESCRIPCION", stMatter));

                SqlParameter _SqlParameter = new SqlParameter();
                _SqlParameter.ParameterName = "@cMensaje";
                _SqlParameter.SqlDbType = SqlDbType.VarChar;
                _SqlParameter.Size = 100;
                _SqlParameter.Direction = ParameterDirection.Output;

                _SqlCommand.Parameters.Add(_SqlParameter);
                _SqlCommand.ExecuteNonQuery();

                return _SqlParameter.Value.ToString();
            }
            catch (Exception ex) { throw ex; }
            finally { _SqlConnection.Close(); };
        }

        public static SqlDataReader drLevelSearch(string stUser, string stDescripcion)
        {
            try
            {
                SqlConnection _SqlConnection = csConexion.getConexion();
                SqlCommand _SqlCommand = new SqlCommand("spLevelSearch", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@CODE_USER", stUser);
                SqlParameter p2 = new SqlParameter("@DESCRIPCION", stDescripcion);
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
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
