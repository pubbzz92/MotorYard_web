using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
namespace Motor_Yard
{
    public partial class Shops : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
            String area=(String)Session["area_info"];
            String inv = (String)Session["inv_code"];
            String category = Request.QueryString["category"].Replace('_', ' ');
            String part= Request.QueryString["part"].Replace('_', ' ');
                DatabaseConnections db=new DatabaseConnections();
                String itemcode = inv + db.GetId(category.ToLower(), "Category") + db.GetId(part, "SparePart");
                String sql = "select distinct client_name,shop_name,shop_address,client_contact,client_email,unit_price from Client_InventoryItem inner join Client where Client_InventoryItem.client_id=Client.client_id AND Client_InventoryItem.inventory_id='" + itemcode + "'";
                String[][] details;
                if (area == "")
                {
                    details=db.getCli(sql);
                    
                }
                else { 
                sql="select distinct client_name,shop_name,shop_address,client_contact,client_email,unit_price from Client_InventoryItem inner join Client where Client_InventoryItem.client_id=Client.client_id AND Client_InventoryItem.inventory_id='" + itemcode + "'AND Client.shop_area='"+area+"'";
                details = db.getCli(sql);
               

                
                }

                loop(details);

            }

        }



        public void loop(String[][] a) {

            StringBuilder sb = new StringBuilder();
            if (a.Length != 0)
            {
                for (int i = 0; i < a.Length; i++)
                {

                    sb.Append("<p style=\"color:#ffffff\">(" + (i + 1).ToString() + ").");
                    for (int j = 0; j < a[i].Length; j++)
                    {
                        if (j == 0)
                        {
                            sb.Append("Dealer's Name:<span style=\"color:#ff8000\"> " + a[i][j] + "</span><br>");
                        }
                        else if (j == 1)
                        {

                            sb.Append("<p style=\"color:#ffffff\">-Shop Name:<span style=\"color:#ff8000\"> " + a[i][j] + "</span><br>");
                        }
                        else if (j == 2)
                        {

                            sb.Append("<p style=\"color:#ffffff\">-Shop Address:<span style=\"color:#ff8000\"> " + a[i][j] + "</span><br>");
                        }
                        else if (j == 3)
                        {

                            sb.Append("<p style=\"color:#ffffff\">-Telephone No:<span style=\"color:#ff8000\"> " + a[i][j] + "</span><br>");

                        }
                        else if (j == 4)
                        {
                            sb.Append("<p style=\"color:#ffffff\">-Email:<span style=\"color:#ff8000\"> " + a[i][j] + "</span><br>");

                        }
                        else if (j == 5)
                        {
                            sb.Append("<p style=\"color:#ffffff\">-Unit price of the Searched part : <span style=\"color:#ff8000\">Rs. " + a[i][j] + ".00</span><br>");


                        }






                    }
                    sb.Append("</p><br>");



                }
            }
            else {

                sb.Append("<h3 style=\"color:#ff8000\">No Shops were found in this District</h3>");
            
            }
            panel.Controls.Add(new Literal { Text = sb.ToString() });
        
        }


    }
}