using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuegoDidactico.Web.WebForms.Modules.Children
{
    public partial class frmSelectAvatar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGirl1_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_girl_1".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }

        protected void btnGirl2_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_girl_2".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }

        protected void btnGirl3_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_girl_3".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }

        protected void btnGirl4_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_girl_4".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }

        protected void btnChild1_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_child_1".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }

        protected void btnChild2_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_child_2".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }

        protected void btnChild3_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_child_3".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }

        protected void btnChild4_Click(object sender, ImageClickEventArgs e)
        {
            Session["Avatar"] = "avatar_child_4".ToString();
            Response.Redirect("~/WebForms/Modules/Children/Spanish/frmSelectLevel.aspx");
        }
    }
}