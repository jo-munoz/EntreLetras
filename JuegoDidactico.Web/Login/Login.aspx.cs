using JuegoDidactico.Logica.Login;
using System;
using System.Data.SqlClient;

namespace JuegoDidactico.Web.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SessionClean();
            }
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            SqlDataReader _SqlDataReader;
            _SqlDataReader = csLogin.Login(txtUsuario.Text.Trim(), txtPassword.Text.Trim());

            SessionClean();

            if (_SqlDataReader.HasRows)
            {
                while (_SqlDataReader.Read())
                {
                    Session["txtUsuario"] = _SqlDataReader[0].ToString().Trim();
                    Session["txtRol"] = _SqlDataReader[2].ToString().Trim();
                    Session["Cod_user"] = _SqlDataReader[3].ToString().Trim();

                    Session["Login"] = true;

                    if (_SqlDataReader[2].ToString().Trim() == "Admin")
                    {
                        Response.Redirect("~/WebForms/Modules/Admin/frmCreateUser.aspx",false);
                    }
                    else
                    {
                        Response.Redirect("~/WebForms/Modules/Children/frmSelectAvatar.aspx",false);
                    }
                }
            }
            else
            {
                string stMessage = txtUsuario.Text.Trim() + ": Ud no esta Autorizado(a) para usar esta herramienta contacte con el administrador de sistema.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alertify.alert('");
                sb.Append(stMessage);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alertify.alert", sb.ToString());
            }
            _SqlDataReader.Close();
        }

        private void SessionClean()
        {
            Session["txtUsuario"] = null;
            Session["txtRol"] = null;
            Session["Avatar"] = null;
            Session["LevelPassedMath"] = null;
            Session["LevelPassedSpanish"] = null;
            Session["Cod_user"] = null;
            Session["Puntaje"] = null;            
        }
    }
}