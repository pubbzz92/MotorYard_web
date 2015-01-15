using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using MySql.Data.MySqlClient;


namespace Motor_Yard
{
    public partial class login : System.Web.UI.Page
    {
        static String sqlconnection = "Server=localhost;DATABASE=motoryard_inventory;UID=root;";
        MySqlConnection con = new MySqlConnection(sqlconnection);
        MySqlCommand cmd;


        protected void Page_Load(object sender, EventArgs e)
        {






            if (Request.QueryString["signUp"] != null)// methanadi balanawa singup kiyana variable eka tiyanawada kiyala thiyanawanam d kiyana variable ekata query eka asing karagannawa
            {
                string d = Request.QueryString["signUp"];

                if (d == "true")
                {
                    PanelnewRegBtn.Visible = false;
                    RegForm.Visible = true;
                }
            }
            if (Request.QueryString["login"] != null)
            {
                string d = Request.QueryString["login"];
                if (d == "true")
                {
                    RegForm.Visible = false;
                    PanelnewRegBtn.Visible = true;

                }
            }

        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButtonRegs_Click(object sender, EventArgs e)
        {
            PanelnewRegBtn.Visible = false;
            RegForm.Visible = true;

        }

        public String error = "This field can not be Empty!!";
        void changeClr(TextBox a)
        {
            a.BackColor = ColorTranslator.FromHtml("#FFAD99");
            a.Text = error;
        }

        //new client regisration
        protected void submit_Click(object sender, EventArgs e)
        {



            string id = txtID.Text;
            string passwrd = txtPassword.Text;
            string contact = txtContact.Text;
            string name = txtName.Text;
            string email = txtEmail.Text;
            string address = txtAddress.Text;
            string area = drpArea.Text;
            string shopNme = txtShopName.Text;
            string pwd_clientid = "";

            MySqlDataReader dr;
            //MySqlCommand cmd=new MySqlCommand();
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = "select * from password where id='" + id + "' ";
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    pwd_clientid = dr[0].ToString();



                }
            }
            con.Close();
            if (pwd_clientid == id && Page.IsValid)
            {

                con.Open();
                cmd.CommandText = "insert into client (client_id,client_name,shop_name,shop_area,shop_address,client_contact,client_email,password) values ('" + id + "','" + name + "','" + shopNme + "','" + area
                    + "','" + address + "','" + contact + "','" + email + "','" + passwrd + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect(Request.Url.AbsoluteUri);
                //RegForm.Visible = false;
                //PanelnewRegBtn.Visible = true;


            }



        }



        protected void LinkButtonBack_Click(object sender, EventArgs e)
        {
            RegForm.Visible = false;
            PanelnewRegBtn.Visible = true;

        }



    }
}