using JuegoDidactico.Logica.Admin.Users;
using JuegoDidactico.Logica.Segurity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JuegoDidactico.Web.WebForms
{
    public partial class frmCreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string stConsecutive = "";
            string stDerypt = "";
            SqlDataReader _SqlDataReader;

                GridViewRow row = GridView1.SelectedRow;
                stConsecutive = row.Cells[1].Text.ToString().Trim();

                _SqlDataReader = Users.stUserSearch(stConsecutive);

                try
                {
                    if (_SqlDataReader.HasRows)
                    {
                        while (_SqlDataReader.Read())
                        {
                            txtUser.Text = _SqlDataReader[0].ToString().Trim();
                            txtUser.Enabled = false;

                            stDerypt = Decrypt.Description(_SqlDataReader[1].ToString().Trim());
                            txtPassword.Text = stDerypt;

                            txtName.Text = _SqlDataReader[2].ToString().Trim();
                        }
                        _SqlDataReader.Close();
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("<Script Language='JavaScript'>parent.alert('" + ex.Message + "');</Script>");
                }
        }

        protected void txtAddUser_Click(object sender, EventArgs e)
        {
            string stUserInsert = "";
            string stPassword = "";

            stPassword = Encrypt.Encryption(txtPassword.Text.Trim());
            
            stUserInsert = Users.stUserInsert(txtUser.Text.Trim().ToUpper(), stPassword.Trim(), txtName.Text.Trim()).ToString();

            if(stUserInsert.Equals("Se actualizo con exito") || stUserInsert.Equals("Se inserto con exito"))
            {
                Empy();
                Response.Write("<Script Language='JavaScript'>parent.alert('" + stUserInsert + "');</Script>");
                Response.Redirect("~/WebForms/Modules/Admin/frmCreateUser.aspx");
            }
            else
            {
                txtUser.Text = "";
                txtPassword.Text = "";

                //System.Text.StringBuilder sb = new System.Text.StringBuilder();
                //sb.Append("<script type = 'text/javascript'>");
                //sb.Append("window.onload=function(){");
                //sb.Append("alertify.error('");
                //sb.Append(stUserInsert);
                //sb.Append("')};");
                //sb.Append("</script>");
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alertify.error", sb.ToString());

                Response.Write("<Script Language='JavaScript'>parent.alert('" + stUserInsert + "');</Script>");
            }
        }

        private void Empy()
        {
            txtName.Text = "";
            txtAddUser.Text = "";
            txtPassword.Text = "";
        }
    }
}