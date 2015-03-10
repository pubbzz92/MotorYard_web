using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using MySql.Data.MySqlClient;

namespace Motor_Yard.Profile
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static String sqlconnection = "Server=localhost;DATABASE=motoryard_web;UID=root;";
        MySqlConnection con = new MySqlConnection(sqlconnection);
        MySqlCommand cmd;
        String[,] request_data=new String[50,6];

        protected void Page_Load(object sender, EventArgs e)
        {
            

            retrieve_notifications();
        }

        protected void submit_Click(object sender, EventArgs e)
        {

        }

       

       

        protected void table1_Click(object sender, EventArgs e)
        {
            PlaceHolder[] ph = { not1, not2, not3, not4, not5, not6, not7, not8, not9, not10,not11,not12,not13,not14,not15,not16,not17,not18,not19,not20,not21,not22,not23,
        not24,not25,not26,not27,not28,not29,not30,not31,not32,not33,not34,not35,not36,not37,not38,not39,not40,not41,not42,not43,not44,not45,not46,not47,not48,not49,not50};

            LinkButton linkbutton = sender as LinkButton;
            //linkbutton.Visible = false;
            String msgName = linkbutton.ID;
            msgName = msgName.Replace("LinkButton", "");
            Email.Text = msgName;
            int placeholder_index = Int16.Parse(msgName)-1;
            StringBuilder html = new StringBuilder();

        
            Email.Text = request_data[placeholder_index, 1];
            html.Append("<p style=\"font-size:13px;padding:2px;\">" + "Sent : " + request_data[placeholder_index, 4] + "</p>" + " <br />" + "<p style=\"background-color:#95D395;padding:2px\">" + request_data[placeholder_index, 5] + "</p>" + "</br>" + "</br>" + "<p style=\"font-size:13px\">" + "Requested by :   " + request_data[placeholder_index, 0] + "<br />" + "<br />" + "Contact Number :  " + request_data[placeholder_index, 2] + "</p>");

            message.Controls.Add(new Literal { Text = html.ToString() });

           

        }

        
        public void retrieve_notifications() {

            MySqlDataReader dr,data;
           
            String[] temp=new String[6];
            String user=(String)Session["user"];
            String pwd=(String)Session["pwd"];
            String Area = "";
            int x = 0;
           

            PlaceHolder[] ph = { not1, not2, not3, not4, not5, not6, not7, not8, not9, not10,not11,not12,not13,not14,not15,not16,not17,not18,not19,not20,not21,not22,not23,
        not24,not25,not26,not27,not28,not29,not30,not31,not32,not33,not34,not35,not36,not37,not38,not39,not40,not41,not42,not43,not44,not45,not46,not47,not48,not49,not50};


            //retrive the area of the shop
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = "select shop_area from client where client_name='"+user+"' and password='"+pwd+"' ";
            dr=cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Area = dr[0].ToString();
                }

            }

            con.Close();

          

            //retrieve the notifications 

            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = "select * from notifications where (area)='" + Area + "' order by date desc ";
            data = cmd.ExecuteReader();

            if (data.HasRows)
            {
                while (x < 50 && data.Read())
                {
                    StringBuilder html = new StringBuilder();
                    request_data[x,0] = data["name"].ToString();
                    request_data[x,1] = data["email"].ToString();
                    request_data[x,2] = data["contact"].ToString();
                    request_data[x,3] = data["area"].ToString();
                    request_data[x,4] = data["date"].ToString();
                    request_data[x,5] = data["inquire"].ToString();

                    int inqire_length = (request_data[x, 5].Length)/4; 


                    html.Append(" <table cellpadding=\"0\" cellspacing=\"0\" class=\"auto-style5 notificationList\" style=\"display: block; margin: 10px 10px 10px 10px; width: 270px; height: 64px;\" >" +
                    "<tr>" +
                        "<td style=\"font-size: 13px; padding: 5px 5px 5px 5px; color: #2231d4\">" + "<b>" + request_data[x,0] + "</b>" + "</td>" +
                    "</tr>" +
                    "<tr>" +
                        "<td style=\"font-size: 12px; padding: 0px 5px 0px 5px;\">" + request_data[x,5].Substring(0,inqire_length) +"................."+ "</td>" +
                    "</tr>" +
                    "<tr>" +
                        "<td style=\"font-size: 10px; padding: 5px 5px 5px 5px; color: #000; font-weight: bold;\">" + request_data[x,4] + "</td>" +
                    "</tr>" +
                "</table>");
                    ph[x].Controls.Add(new Literal { Text = html.ToString() });

                    x++;

                }
                con.Close();
            }
            



        
        } 

       
    }
}