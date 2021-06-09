using JuegoDidactico.Logica.Level;
using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Math
{
    public partial class frmSelectLevel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Session["LevelPassedMath"] != null)
                    {
                        validateLevel();
                    }
                    else
                    {
                        //Se ejecuta solo cuando recien abre la pagina
                        //Consulto si el usuario ya tiene niveles desbloqueados
                        //para que continue donde quedo
                        SqlDataReader _SqlDataReader;
                        _SqlDataReader = csLevel.drLevelSearch(Session["Cod_user"].ToString(), "Math");

                        if (_SqlDataReader.HasRows)
                        {
                            while (_SqlDataReader.Read())
                            {
                                Session["LevelPassedMath"] = _SqlDataReader[3].ToString().Trim();
                            }
                            validateLevel();
                        }
                        _SqlDataReader.Close();
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('Ha ocurrido un Error, por favor comuniquese con el administrador del sistema.');window.location.href = '" + "frmSelectLevel.aspx';</script>");
            }
        }

        protected void LockedLevel1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/WebForms/Modules/Children/Math/Level1/frmMathLevel1.aspx",false);
        }

        protected void UnlockedLevel2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/WebForms/Modules/Children/Math/Level2/frmMathLevel2.aspx", false);
        }

        protected void UnlockedLevel3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/WebForms/Modules/Children/Math/Level3/frmMathLevel3.aspx", false);
        }

        protected void UnlockedLevel4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/WebForms/Modules/Children/Math/Level4/frmMathLevel4.aspx", false);
        }

        protected void UnlockedLevel5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/WebForms/Modules/Children/Math/Level5/frmMathLevel5.aspx", false);
        }

        protected void UnlockedWord_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string filename = "~/FileWord/FICHAS_DE_MATEMATICAS.docx";
                Response.Clear();
                Response.ClearContent();
                Response.ClearHeaders();
                Response.Buffer = false;

                Response.ContentType = "application/msword";
                Response.ContentType = "application/octet-stream";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + "FICHAS_DE_MATEMATICAS" + ".docx");
                Response.Flush();
                Response.WriteFile(filename);
                Response.End();
            }
            catch (Exception ex)
            {
                //CError objError = new CError();
                //objError.AgregarError(ex);
                Response.Write("<script>alert('Ha ocurrido un Error, por favor comuniquese con el administrador del sistema.');window.location.href = '" + "frmSelectLevel.aspx';</script>");
            }
        }

        private void validateLevel()
        {
            string tp = "";
            tp = Session["LevelPassedMath"].ToString();
            if (Convert.ToString(Session["LevelPassedMath"]) == "Level1")
            {
                LockedLevel2.Visible = false;
                UnlockedLevel2.Visible = true;
            }
            else if (Convert.ToString(Session["LevelPassedMath"]) == "Level2")
            {
                LockedLevel2.Visible = false;
                UnlockedLevel2.Visible = true;

                LockedLevel3.Visible = false;
                UnlockedLevel3.Visible = true;
            }
            else if (Convert.ToString(Session["LevelPassedMath"]) == "Level3")
            {
                LockedLevel2.Visible = false;
                UnlockedLevel2.Visible = true;

                LockedLevel3.Visible = false;
                UnlockedLevel3.Visible = true;

                LockedLevel4.Visible = false;
                UnlockedLevel4.Visible = true;
            }
            else if (Convert.ToString(Session["LevelPassedMath"]) == "Level4")
            {
                LockedLevel2.Visible = false;
                UnlockedLevel2.Visible = true;

                LockedLevel3.Visible = false;
                UnlockedLevel3.Visible = true;

                LockedLevel4.Visible = false;
                UnlockedLevel4.Visible = true;

                LockedLevel5.Visible = false;
                UnlockedLevel5.Visible = true;
            }
            else if (Convert.ToString(Session["LevelPassedMath"]) == "Level5")
            {
                LockedLevel2.Visible = false;
                UnlockedLevel2.Visible = true;

                LockedLevel3.Visible = false;
                UnlockedLevel3.Visible = true;

                LockedLevel4.Visible = false;
                UnlockedLevel4.Visible = true;

                LockedLevel5.Visible = false;
                UnlockedLevel5.Visible = true;

                UnlockedWord.Visible = true;
            }
        }
    }
}