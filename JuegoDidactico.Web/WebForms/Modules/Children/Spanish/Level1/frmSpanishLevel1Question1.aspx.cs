using System;

namespace JuegoDidactico.Web.WebForms
{
    public partial class frmSpanishLevel1Question1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedSpanish"] != null)
                    {
                        string tp = "";
                        tp = Session["LevelPassedSpanish"].ToString();
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

        protected void btnLevel1Question1_Click(object sender, EventArgs e)
        {
            try
            {
                if (rbtn1_1.Checked == false && rbtn1_2.Checked == false && rbtn1_3.Checked == false && rbtn1_4.Checked == false)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la primera pregunta" + "');</Script>");
                }
                else if (rbtn2_1.Checked == false && rbtn2_2.Checked == false && rbtn2_3.Checked == false && rbtn2_4.Checked == false)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + "Seleccione respuesta de la segunda pregunta" + "');</Script>");
                }
                else
                {                    
                    if (rbtn1_2.Checked == true & rbtn2_1.Checked == true)
                    {
                        Session["Puntaje"] = "50";
                    }
                    else if (rbtn1_2.Checked == true)
                    {
                        Session["Puntaje"] = "25";
                    }
                    else if (rbtn2_1.Checked == true)
                    {
                        Session["Puntaje"] = "25";
                    }
                    else
                    {
                        Session["Puntaje"] = "0";
                    }
                    Response.Redirect("~/WebForms/Modules/Children/Spanish/Level1/frmSpanishLevel1Question2.aspx",false);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}