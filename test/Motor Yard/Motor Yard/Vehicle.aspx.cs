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
            
            if (!IsPostBack) {

                String[][] parts = (String[][])Session["parts"];
                String[][] quants = (String[][])Session["quantities"];
                int len = parts.Length;
                Label[] lb= { cat1,cat2,cat3,cat4,cat5,cat6,cat7,cat8 };
                Table[] tb = { t1, t2, t3,t4,t5,t6,t7,t8 };
                PlaceHolder[] ph = { ph1, ph2, ph3, ph3, ph4, ph5, ph6,ph7,ph8 };

                int k = 0;
                while (k < len) { 
                    Label cat=lb[k];
                    cat.Text=parts[k][0];
                    
                    loop(ph[k], parts, quants, k);
                    tb[k].Visible = true;
                    k++;
                
                }
             
            
            }
            


        }

        public void loop(PlaceHolder x,String[][] parts,String[][] quants,int k) { 
                
                StringBuilder html = new StringBuilder();
              
                        int j=1;
                        while(j < parts[k].Length){
                        html.Append("<a>"+parts[k][j]+" ("+quants[k][j-1] +")</a>"+"<br>");
                        j++;
                        }
                        x.Controls.Add(new Literal { Text = html.ToString() });
                
                
                
        
        }


        







    }
}