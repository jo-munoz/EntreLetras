using JuegoDidactico.Logica.Level;
using JuegoDidactico.Logica.Matters;
using System;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Math.Level1
{
    public partial class frmMathLevel1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedMath"] != null)
                    {
                        if (Convert.ToString(Session["LevelPassedMath"]) == "Level1")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Math/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level2")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Math/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level3")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Math/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level4")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Math/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level5")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Math/frmSelectLevel.aspx", false);
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/Login/Login.aspx", false);
                }
            }
        }

        protected void btnLevel1_Click(object sender, EventArgs e)
        {
            try
            {
                int inPuntaje = 0;
                if (txt1_Resul.Text == null && txt2_Resul.Text == null)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Responda todas la preguntas" + "');</Script>");
                }
                else
                {
                    if (Convert.ToInt32(txt1_Resul.Text) == 400 && Convert.ToInt32(txt2_Resul.Text) == 736)
                    {
                        inPuntaje = 100;
                    }
                    else if (Convert.ToInt32(txt1_Resul.Text) == 400)
                    {
                        inPuntaje = 50;
                    }
                    else if (Convert.ToInt32(txt2_Resul.Text) == 736)
                    {
                        inPuntaje = 50;
                    }
                    else
                    {
                        inPuntaje = 0;
                    }

                    //Inserto Encabezado
                    string stMatterInsert = "";
                    string stLevelInsert = "";
                    stMatterInsert = csMath.stMatterInsert(DateTime.Now.ToShortDateString(), Session["Cod_user"].ToString().Trim(), "Math").ToString();
                    if (stMatterInsert == "Se inserto con exito")
                    {
                        //Inserto el Avance
                        stLevelInsert = csLevel.stLevelInsert(Session["Cod_user"].ToString().Trim(), "Level1", Convert.ToString(inPuntaje).Trim(), "Math");
                        if (stLevelInsert == "Se inserto con exito")
                        {
                            Session["LevelPassedMath"] = "Level1";
                            Response.Redirect("~/WebForms/Modules/Children/Math/frmSelectLevel.aspx", false);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}