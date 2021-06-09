using JuegoDidactico.Logica.Level;
using JuegoDidactico.Logica.Matters;
using System;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level3
{
    public partial class frmSpanishLevel3Question2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedSpanish"] != null)
                    {
                        if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level3")
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

        protected void btnLevel3Question2_Click(object sender, EventArgs e)
        {
            //Valido que seleccione datos
            int inPuntaje = 0;
            int inPuntajeTotal = 0;
            if (rbtn1_1.Checked == false && rbtn1_2.Checked == false && rbtn1_3.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la primer pregunta" + "');</Script>");
            }
            else if (rbtn2_1.Checked == false && rbtn2_2.Checked == false && rbtn2_3.Checked == false)
            {
                Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la segunda pregunta" + "');</Script>");
            }
            else
            {
                if (rbtn1_2.Checked == true && rbtn2_2.Checked == true)
                {
                    inPuntaje = 50;
                }
                else if (rbtn1_2.Checked == true)
                {
                    inPuntaje = 25;
                }
                else if (rbtn2_2.Checked == true)
                {
                    inPuntaje = 25;
                }
                else
                {
                    inPuntaje = 0;
                }

                inPuntajeTotal = inPuntaje + Convert.ToInt32(Session["Puntaje"]);

                //Inserto Encabezado
                string stMatterInsert = "";
                string stLevelInsert = "";
                stMatterInsert = csMath.stMatterInsert(DateTime.Now.ToShortDateString(), Session["Cod_user"].ToString().Trim(), "Spanish").ToString();
                if (stMatterInsert == "Se inserto con exito")
                {
                    //Inserto el Avance
                    stLevelInsert = csLevel.stLevelInsert(Session["Cod_user"].ToString().Trim(), "Level3", Convert.ToString(inPuntajeTotal).Trim(), "Spanish");
                    if (stLevelInsert == "Se inserto con exito")
                    {
                        Session["LevelPassedSpanish"] = "Level3";
                        Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx", false);
                    }
                }
            }
        }
    }
}