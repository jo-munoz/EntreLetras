using System;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level5
{
    public partial class frmSpanishLevel5Question1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedSpanish"] != null)
                    {
                        if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level5")
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

        protected void btnLevel5Question1_Click(object sender, EventArgs e)
        {
            try
            {
                int inPuntaje = 0;
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

                    Session["Puntaje"] = null;
                    Session["Puntaje"] = inPuntaje;
                    Response.Redirect("~/WebForms/Modules/Children/Spanish/Level5/frmSpanishLevel5Question2.aspx", false);
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}