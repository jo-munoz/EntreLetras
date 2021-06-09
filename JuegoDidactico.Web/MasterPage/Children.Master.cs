using System;

namespace JuegoDidactico.Web.MasterPage
{
    public partial class Children : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Convert.ToString(Session["txtRol"]).Trim() == "Admin")
                    {
                        MenuLateral.Visible = true;
                        CrearUsuarios.Visible = true;
                        Historial.Visible = true;
                        ImgUsuario.Visible = true;
                        ImgUsuario.Src = "../Images/Admin.png";
                        lblUsuario.Visible = true;
                        lblUsuario.Text = Session["txtUsuario"].ToString();
                        lblTituloBienvenida.Visible = true;
                    }
                    else
                    {
                        if (Session["Avatar"] != null)
                        {
                            MenuLateral.Visible = true;
                            ImgUsuario.Visible = true;
                            ImgUsuario.Src = "../Images/" + Session["Avatar"].ToString() + ".png";
                            lblUsuario.Visible = true;
                            lblUsuario.Text = Session["txtUsuario"].ToString();
                            LiSpanish.Visible = true;
                            LiMaths.Visible = true;

                            //Ya hizo los niveles de español y hay que bloquear la opcion español
                            //para que no la vuelva hacer
                            //if (Session["LevelPassedSpanish"].ToString() == "Si")
                            //{

                            //}

                            //Ya hizo los niveles de matematicas y hay que bloquear la opcion matematicas
                            //para que no la vuelva hacer
                            //if (Convert.ToInt32(Session["LevelPassedMath"]) == 6)
                            //{

                            //}
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
}