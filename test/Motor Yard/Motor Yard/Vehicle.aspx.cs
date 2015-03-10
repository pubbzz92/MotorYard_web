using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;


namespace Motor_Yard
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
                CheckBoxList1.Attributes.Add("onclick", "radioMe(event);");
                String[][] parts = (String[][])Session["parts"];
                String[][] quants = (String[][])Session["quantities"];
                int len = parts.Length;
                Label[] lb = { cat1, cat2, cat3, cat4, cat5, cat6, cat7, cat8 };
                Table[] tb = { t1, t2, t3, t4, t5, t6, t7, t8 };
                Panel[] ph = { ph1, ph2, ph3, ph3, ph4, ph5, ph6, ph7, ph8 };

                int k = 0;
                while (k < len)
                {
                    Label cat = lb[k];
                    cat.Text = parts[k][0];

                    loop(ph[k], parts, quants, k);
                    tb[k].Visible = true;
                    k++;

                }

            

            
            
            


        }

        public void loop(Panel x,String[][] parts,String[][] quants,int k) { 
                
                StringBuilder html = new StringBuilder();
                string p, cat;
                html.Append("<ul>");
                cat = parts[k][0];

                        int j=1;
                        while(j < parts[k].Length){
                        p=parts[k][j];
                        html.Append("<li><a href=\"Shops.aspx?part=" + p.Replace(' ', '_') + "&category=" + cat.Replace(' ', '_') + "\" >" + parts[k][j] + "</a></li>" + "<br>");
                        j++;
                        }
                        html.Append("</ul>");
                        x.Controls.Add(new Literal { Text = html.ToString() });
                
                
                
        
        }

        protected void btn_area_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {


                    Session["area_info"] = item.Text;
                }
                
                    
            }
            
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["area_info"] = "";
           
        }

        

        


        


        







    }
}