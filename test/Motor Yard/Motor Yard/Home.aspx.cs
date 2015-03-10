using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace Motor_Yard
{
    public partial class Default1 : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    DropDownList3_year.Items.Clear();
        //    DropDownList3_year.Items.Add("-- Select Year --");
        //    int backyear = 50;
        //    DateTime cd = DateTime.Now;
        //    int cyear = cd.Year;
        //    for (int i = 0; i < backyear; i++)
        //    {
        //        DropDownList3_year.Items.Add(Convert.ToString(cyear - i));
        //    }
        //    if (IsPostBack == false)
        //    {
        //        if (Request.QueryString != null)
        //        {
        //            string d = Request.QueryString["Search"];
        //            if (d == "category")
        //            {
        //                Response.Redirect("~/login.aspx?singUp=true");
        //            }
        //        }
        //    }
        //}


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                generateComboItems_Brand();
                Session["area_info"] = "";
            }
        }

      

        public void generateComboItems_Brand()
        {

            DatabaseConnections db = new DatabaseConnections();
            String[] brands = db.generateComboBrand();
            int i = 0;
            while (brands[i] != null)
            {
                drop_brand.Items.Add(brands[i]);
                
                i++;
            }



        }

        protected void drop_brand_SelectedTextChanged(object sender, EventArgs e)
        {
            string check = drop_brand.Text;
            if (check != "")
            {
                if (drop_model.Items.Count != 1)
                {
                    drop_model.Items.Clear();
                    drop_model.Text = "Select Model";
                }
                DatabaseConnections db = new DatabaseConnections();
                string ItemId = db.GetId(check, "Brand");
                String[] reader = db.generateComboItems_Model(ItemId);
                int i = 0;
                while (reader[i] != null)
                {
                    drop_model.Items.Add(reader[i]);
                    i++;

                }


            }

        }
        protected void drop_model_SelectedTextChanged(object sender, EventArgs e)
        {

            string check = drop_model.Text;
            if (check != "")
            {
                if (drop_fuel.Items.Count != 1)
                {
                    drop_fuel.Items.Clear();
                    drop_fuel.Text = "Select Fuel Type";
                }
                DatabaseConnections db = new DatabaseConnections();
                string ItemId = db.GetId(check, "Model");
                String[] reader = db.generateComboItems_Fuel(ItemId);
                int i = 0;
                while (reader[i] != null)
                {
                    drop_fuel.Items.Add(reader[i]);
                    i++;

                }


            }

        }
        protected void drop_year_SelectedTextChanged(object sender, EventArgs e)
        {
            string check = drop_year.Text;
            string check2 = drop_model.Text;
/*
           if (check != "")
            {
                if (drop_category.Items.Count != 1)
                {
                    drop_category.Items.Clear();
                    drop_category.Text = "";
                }
                DatabaseConnections db = new DatabaseConnections();
                string ItemId = db.GetId(check, "Year");
                string ItemId2 = db.GetId(check2, "Model");

                String[] reader = db.generateComboItems_Cat(ItemId, ItemId2);
                int i = 0;

                while (reader[i] != null)
                {
                    drop_category.Items.Add(reader[i]);
                    i++;

                }
            

            }*/
 



        }
        protected void drop_engine_SelectedTextChanged(object sender, EventArgs e)
        {
            string check = drop_engine.Text;
            string check2 = drop_model.Text;
            if (check != "")
            {
                if (drop_year.Items.Count != 1)
                {
                    drop_year.Items.Clear();
                    drop_year.Text = "Select Year";
                }
                DatabaseConnections db = new DatabaseConnections();

                string ItemId = db.GetId(check, "Engine");
                string ItemId2 = db.GetId(check2, "Model");
                String[] reader = db.generateComboItems_Year(ItemId, ItemId2);
                int i = 0;
                while (reader[i] != null)
                {
                    drop_year.Items.Add(reader[i]);
                    i++;

                }


            }

        }
        protected void drop_fuel_SelectedTextChanged(object sender, EventArgs e)
        {
            string check = drop_fuel.Text;
            string check2 = drop_model.Text;
            if (check != "")
            {
                if (drop_engine.Items.Count != 1)
                {
                    drop_engine.Items.Clear();
                    drop_engine.Text = "Select Engine Capacity";
                }
                DatabaseConnections db = new DatabaseConnections();
                string ItemId = db.GetId(check, "Fuel");
                string ItemId2 = db.GetId(check2, "Model");
                String[] reader = db.generateComboItems_Engine(ItemId, ItemId2);
                int i = 0;
                while (reader[i] != null)
                {
                    drop_engine.Items.Add(reader[i]);
                    i++;

                }


            }


        }
       

        protected void button_go_Click(object sender, EventArgs e)
        {
            String brand,model,year,engine,fuel;
            brand=drop_brand.SelectedValue;
            model = drop_model.SelectedValue;
            fuel = drop_fuel.SelectedValue;
            engine = drop_engine.SelectedValue;
            year = drop_year.SelectedValue;
            if(brand!="Default value" && model!="Default value" && engine!="Default value" && fuel!="Default value" && year!="Default value"){
            DatabaseConnections db = new DatabaseConnections();
            String item_code = db.GetId(brand,"Brand")+db.GetId(model,"Model")+db.GetId(fuel,"Fuel")+db.GetId(engine,"Engine")+db.GetId(year,"Year");
            String sql = "select cat_id,part_name from inventory_item inner join sparepart where Inventory_Item.part_id=SparePart.part_id AND (brand_id='" + db.GetId(brand, "Brand") + "'AND model_id ='" + db.GetId(model, "Model") + "'AND fuel_id='" + db.GetId(fuel, "Fuel") + "'AND engine_id='" + db.GetId(engine, "Engine") + "'AND year_id='" + db.GetId(year, "Year") + "') order by cat_id";

            String[][] result=db.getResults(sql);
            //int i = 0;
            String part_id;
            //generating itemcodes
            String[][] InventCodes = new String[8][];   //to store inventory_itemcodes
            int j=0;
            ArrayList pub = new ArrayList();
            
            foreach (String[] cats in result) {
                if (cats != null)
                {
                    
                    String cat_id = cats[0];
                    
                    int i = 1;
                    String[] temp = new String[65];
                    ArrayList ttt = new ArrayList();
                    while (cats[i] != null)
                    {
                        ttt.Add(cats[i]);
                        part_id = db.GetId(cats[i], "SparePart");
                        String icd = item_code + cat_id + part_id;
                        temp[i - 1] = icd;
                        i++;

                    }
                    ttt.Insert(0, db.getName(cat_id).ToUpper());

                    InventCodes[j] = temp;
                    pub.Add((String[])ttt.ToArray(typeof(string)));
                    j++;
                }
            }
            
            //generating quantities
            String[][] Quantities = new String[8][];    //to store quantities
            int b= 0;
            int c = 0;
            foreach (String[] cats in InventCodes)
            {

                if (cats != null)
                {
                    int i = 0;
                    String[] temp = new String[65];
                    while (cats[i] != null)
                    {
                        String sql2 = "select sum(quantity) from Client_InventoryItem where inventory_id='" + cats[i] + "'";
                        temp[i] = db.genQuantity(sql2);
                        i++;

                    }
                    Quantities[c] = temp;
                    c++;
                }
            }
            /*int n = 0;
            while (result[n] != null) {
                result[n][0] = db.getName(result[n][0]).ToUpper();
                n++;
            }*/

            Session["quantities"] = Quantities;
            
            Session["parts"]=(String[][])pub.ToArray(typeof(String[]));
            Session["inv_code"] = item_code;
            Response.Redirect("Vehicle.aspx");
            }
            else { 

            Response.Redirect("Home.aspx");
        }
            /*drop_brand.Items.Clear();
            drop_model.Items.Clear();
            drop_fuel.Items.Clear();
            drop_engine.Items.Clear();
            drop_year.Items.Clear();

            drop_brand.Text = "Select Brand";
            drop_brand.Text = "Select Brand";
            drop_brand.Text = "Select Brand";
            drop_brand.Text = "Select Brand";
            drop_brand.Text = "Select Brand";*/
            
            


            
        }
       

        
    }

}
