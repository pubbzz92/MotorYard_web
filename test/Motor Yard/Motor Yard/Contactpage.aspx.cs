using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Motor_Yard
{
    public partial class Contactpage : System.Web.UI.Page
    {

        static String sqlconnection = "Server=localhost;DATABASE=motoryard_Web;UID=root;";
        MySqlConnection con = new MySqlConnection(sqlconnection);
        MySqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNotify_Click(object sender, EventArgs e)
        {

            String name = txtName.Text;
            String email = txtEmail.Text;
            String contact = txtContact.Text;
            String area = drpArea.Text;
            String inquire = txtInquire.Text;
            DateTime today = DateTime.Today;

            if (Page.IsValid)
            {
                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandText = "insert into notifications (name,email,contact,area,date,inquire) values('" + name + "','" + email + "','" + contact + "','" + area + "','" + today + "','" + inquire + "') ";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Request.Url.AbsoluteUri);
            }

        }
    }
}