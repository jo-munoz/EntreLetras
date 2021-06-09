using System;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Spanish
{
    public partial class frmSpanishLevel2Question1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Convert.ToBoolean(Session["Login"]) == true)
                {
                    if (Session["LevelPassedSpanish"] != null)
                    {
                        if (Convert.ToString(Session["LevelPassedSpanish"]) == "Level2")
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

        protected void btLevel2Question1_Click(object sender, EventArgs e)
        {
            //Validacion de la 1Pregunta
            int inPuntaje = 0;
            if (ddl1_1.SelectedValue == "2" && ddl1_2.SelectedValue == "3" && ddl1_3.SelectedValue == "1")
            {
                inPuntaje = 30;
            }
            else if (ddl1_1.SelectedValue == "2")
            {
                inPuntaje = 10;
            }
            else if (ddl1_2.SelectedValue == "3")
            {
                inPuntaje = 10;
            }
            else if (ddl1_3.SelectedValue == "1")
            {
                inPuntaje = 10;
            }

            //Validacion de la 2pregunta
            if(ddl2_1.SelectedValue == "De dos amigos sapos que quieren contarse un cuento." && ddl2_2.SelectedValue == "Hecho agua en su cabeza, dio un paseo, se golpeo la cabeza contra la pared.")
            {
                inPuntaje = inPuntaje + 20;
            }
            else if(ddl2_1.SelectedValue == "De dos amigos sapos que quieren contarse un cuento.")
            {
                inPuntaje = inPuntaje + 10;
            }
            else if(ddl2_2.SelectedValue == "Hecho agua en su cabeza, dio un paseo, se golpeo la cabeza contra la pared.")
            {
                inPuntaje = inPuntaje + 10;
            }

            Session["Puntaje"] = null;
            Session["Puntaje"] = inPuntaje;
            Response.Redirect("~/WebForms/Modules/Children/Spanish/Level2/frmSpanishLevel2Question2.aspx",false);
        }
    }
}