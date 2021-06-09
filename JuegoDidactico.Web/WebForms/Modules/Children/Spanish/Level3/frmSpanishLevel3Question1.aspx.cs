using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuegoDidactico.Web.WebForms.Modules.Children.Spanish.Level3
{
    public partial class frmSpanishLevel3Question1 : System.Web.UI.Page
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

        protected void btnLevel3Question1_Click(object sender, EventArgs e)
        {
            //Validacion de la 1pregunta
            //2
            //3
            //1
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
            else
            {
                inPuntaje = 0;
            }

            //Validacion de la 2pregunta
            if (ddl2_1.SelectedValue == "Tato le pidió a su padre que  le  regalara una pajarita de papel" && ddl2_2.SelectedValue == "Tato vio que la pajarita estaba triste y su padre la llevó donde dirferentes sabios para hacerla feliz")
            {
                inPuntaje = inPuntaje + 20;
            }
            else if(ddl2_1.SelectedValue == "Tato le pidió a su padre que  le  regalara una pajarita de papel")
            {
                inPuntaje = inPuntaje + 10;
            }
            else if (ddl2_2.SelectedValue == "Tato vio que la pajarita estaba triste y su padre la llevó donde dirferentes sabios para hacerla feliz")
            {
                inPuntaje = inPuntaje + 10;
            }
            else
            {
                inPuntaje = 0;
            }

            Session["Puntaje"] = null;
            Session["Puntaje"] = inPuntaje;
            Response.Redirect("~/WebForms/Modules/Children/Spanish/Level3/frmSpanishLevel3Question2.aspx", false);
        }
    }
}