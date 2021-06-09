using JuegoDidactico.Logica.Level;
using JuegoDidactico.Logica.Matters;
using System;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Math.Level4
{
    public partial class frmMathLevel4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedMath"] != null)
                    {
                        if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level4")
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

        protected void btnLevel4_Click(object sender, EventArgs e)
        {
            try
            {
                double doPuntaje = 0.0;
                if (rbtn1_1.Checked == false && rbtn1_2.Checked == false && rbtn1_3.Checked == false)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la primer pregunta" + "');</Script>");
                }
                else if (rbtn2_1.Checked == false && rbtn2_2.Checked == false && rbtn2_3.Checked == false && rbtn2_4.Checked == false)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la segunda pregunta" + "');</Script>");
                }
                else if (rbtn3_1.Checked == false && rbtn3_2.Checked == false && rbtn3_3.Checked == false && rbtn3_4.Checked == false)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la tercera pregunta" + "');</Script>");
                }
                else
                {
                    if (rbtn1_3.Checked == true && rbtn2_2.Checked == true && rbtn3_3.Checked == true)
                    {
                        doPuntaje = 100;
                    }
                    else if (rbtn1_3.Checked == true)
                    {
                        doPuntaje = 33.33;
                    }
                    else if (rbtn2_2.Checked == true)
                    {
                        doPuntaje = 33.33;
                    }
                    else if (rbtn3_3.Checked == true)
                    {
                        doPuntaje = 33.33;
                    }
                    else
                    {
                        doPuntaje = 0;
                    }

                    //Inserto Encabezado
                    string stMatterInsert = "";
                    string stLevelInsert = "";
                    stMatterInsert = csMath.stMatterInsert(DateTime.Now.ToShortDateString(), Session["Cod_user"].ToString().Trim(), "Math").ToString();
                    if (stMatterInsert == "Se inserto con exito")
                    {
                        //Inserto el Avance
                        stLevelInsert = csLevel.stLevelInsert(Session["Cod_user"].ToString().Trim(), "Level4", Convert.ToString(doPuntaje).Trim(), "Math");
                        if (stLevelInsert == "Se inserto con exito")
                        {
                            Session["LevelPassedMath"] = "Level4";
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