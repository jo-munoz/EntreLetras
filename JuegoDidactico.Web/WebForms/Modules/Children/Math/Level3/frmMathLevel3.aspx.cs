using JuegoDidactico.Logica.Level;
using JuegoDidactico.Logica.Matters;
using System;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Math.Level3
{
    public partial class frmMathLevel3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedMath"] != null)
                    {
                        if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level3")
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

        protected void btnLevel3_Click(object sender, EventArgs e)
        {
            try
            {
                int inPuntaje = 0;
                if (rbtn1_1.Checked == false && rbtn1_2.Checked == false && rbtn1_3.Checked == false)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Responda la primera pregunta" + "');</Script>");
                }
                else if (rbtn2_1.Checked == false && rbtn2_2.Checked == false && rbtn2_3.Checked == false)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Responda la segunda pregunta" + "');</Script>");
                }
                else
                {
                    if (rbtn1_3.Checked == true && rbtn2_2.Checked == true)
                    {
                        inPuntaje = 100;
                    }
                    else if (rbtn1_3.Checked == true)
                    {
                        inPuntaje = 50;
                    }
                    else if (rbtn2_2.Checked == true)
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
                        stLevelInsert = csLevel.stLevelInsert(Session["Cod_user"].ToString().Trim(), "Level3", Convert.ToString(inPuntaje).Trim(), "Math");
                        if (stLevelInsert == "Se inserto con exito")
                        {
                            Session["LevelPassedMath"] = "Level3";
                            Response.Redirect("~/WebForms/Modules/Children/Math/frmSelectLevel.aspx");
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