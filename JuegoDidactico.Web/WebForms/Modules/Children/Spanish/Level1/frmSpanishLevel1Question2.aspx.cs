using JuegoDidactico.Logica.Level;
using JuegoDidactico.Logica.Matters;
using System;

namespace JuegoDidactico.Web.WebForms
{
    public partial class frmSpanishLevel1Question2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedSpanish"] != null)
                    {
                        if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level1")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level2")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level3")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level4")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx", false);
                        }
                        else if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level5")
                        {
                            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx", false);
                        }
                    }
                }
                else
                {
                    Response.Redirect("~/Login/Login.aspx", false);
                }                
            }
        }

        protected void btnLevel1Question2_Click(object sender, EventArgs e)
        {
            //valido que seleccione respuestas
            if (rbtn1_V.Checked == false && rbtn1_F.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la primer pregunta" + "');</Script>");
            }
            else if (rbtn2_V.Checked == false && rbtn2_F.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la segunda pregunta" + "');</Script>");
            }
            else if (rbtn3_V.Checked == false && rbtn3_F.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la tercera pregunta" + "');</Script>");
            }
            else if (rbtn4_V.Checked == false && rbtn4_F.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la cuarta pregunta" + "');</Script>");
            }
            else if (rbtn5_V.Checked == false && rbtn5_F.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la quinta pregunta" + "');</Script>");
            }
            else if (rbtn6_V.Checked == false && rbtn6_F.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la sexta pregunta" + "');</Script>");
            }
            else if (rbtn7_V.Checked == false && rbtn7_F.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la septima pregunta" + "');</Script>");
            }
            else
            {
                //Operacion para saber el puntaje
                //1 V
                //2 V
                //3 F
                //4 V
                //5 V
                //6 F
                //7 V
                //7.14

                double doPuntaje = 0.0;
                double stPuntajeTotal = 0;

                if (rbtn1_V.Checked == true)
                {
                    doPuntaje = doPuntaje + 7.14;
                }

                if (rbtn2_V.Checked == true)
                {
                    doPuntaje = doPuntaje + 7.14;
                }

                if (rbtn3_F.Checked == true)
                {
                    doPuntaje = doPuntaje + 7.14;
                }

                if (rbtn4_V.Checked == true)
                {
                    doPuntaje = doPuntaje + 7.14;
                }

                if (rbtn5_V.Checked == true)
                {
                    doPuntaje = doPuntaje + 7.14;
                }

                if (rbtn6_F.Checked == true)
                {
                    doPuntaje = doPuntaje + 7.14;
                }

                if (rbtn7_V.Checked == true)
                {
                    doPuntaje = doPuntaje + 7.14;
                }

                if(doPuntaje == 49.98)
                {
                    doPuntaje = 50;
                }

                stPuntajeTotal = doPuntaje + Convert.ToInt32(Session["Puntaje"]);

                //Inserto Encabezado
                string stMatterInsert = "";
                string stLevelInsert = "";
                stMatterInsert = csMath.stMatterInsert(DateTime.Now.ToShortDateString(), Session["Cod_user"].ToString().Trim(), "Spanish").ToString();
                if (stMatterInsert == "Se inserto con exito")
                {
                    //Inserto el Avance
                    stLevelInsert = csLevel.stLevelInsert(Session["Cod_user"].ToString().Trim(), "Level1", Convert.ToString(stPuntajeTotal).Trim(), "Spanish");
                    if (stLevelInsert == "Se inserto con exito")
                    {
                        Session["LevelPassedSpanish"] = "Level1";
                        Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx",false);
                    }
                }
            }
        }
    }
}