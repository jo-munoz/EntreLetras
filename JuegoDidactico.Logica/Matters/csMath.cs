using JuegoDidactico.Conexion.Conexion;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JuegoDidactico.Logica.Matters
{
    public class csMath
    {
        public static string stMatterInsert(string stDate, string stCod_User, string stMatter)
        {
            SqlConnection _SqlConnection = csConexion.getConexion();
            try
            {
                SqlCommand _SqlCommand = new SqlCommand("spMatterInsert", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                _SqlCommand.Parameters.Add(new SqlParameter("@DATE", stDate));
                _SqlCommand.Parameters.Add(new SqlParameter("@CODE_USER", stCod_User));
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
    }
}
