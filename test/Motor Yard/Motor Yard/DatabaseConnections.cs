using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.OleDb;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Collections;

namespace Motor_Yard
{
    public class DatabaseConnections
    {

        public DatabaseConnections()
        {

            /*string connectionStr = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
            con.ConnectionString = @connectionStr;
            cmd.Connection = con;*/
            String sqlconnection = "Server=localhost;DATABASE=motoryard_web;UID=root;";
            MySqlConnection con = new MySqlConnection(sqlconnection);


        }

        // mysql connections
        static String sqlconnection = "Server=localhost;DATABASE=motoryard_web;UID=root;";
        MySqlConnection con = new MySqlConnection(sqlconnection);
        MySqlCommand cmd;

        MySqlDataReader dr;
        string sql;
        public static string itemCode;
        public static string client_Id;
        public static int QuantityHand;
        public static string InventoryId;
        public static string CinId;
        public static string user_id;
        public static string user_name;
        public String itemName;



        public String[] generateComboBrand()
        {
            String[] b = new String[100];
            int i = 0;
            string load = "select distinct brand_name from Inventory_Item inner join Brand where Inventory_Item.brand_id=Brand.brand_id";
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = load;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String x = (dr[0].ToString());
                b[i] = x;
                i++;
            }

            con.Close();
            return b;
        }
        public String[] generateComboItems_Model(String brandId)
        {
            String[] b = new String[100];
            int i = 0;
            string load = "select distinct model_name from Inventory_Item inner join Model where brand_id='" + brandId + "' AND Inventory_Item.model_id=Model.model_id";
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = load;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String x = (dr[0].ToString());
                b[i] = x;
                i++;
            }

            con.Close();
            return b;

        }

        public String[] generateComboItems_Fuel(String modelId)
        {
            String[] b = new String[100];
            int i = 0;
            string load = "select distinct fuel_type from Inventory_Item inner join Fuel where model_id='" + modelId + "'AND Inventory_Item.fuel_id=Fuel.fuel_id";
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = load;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String x = (dr[0].ToString());
                b[i] = x;
                i++;
            }

            con.Close();
            return b;

        }

        public String[] generateComboItems_Engine(String fuelId, String modelId)
        {
            String[] b = new String[100];
            int i = 0;
            string load = "select distinct engine_capacity from Inventory_Item inner join Engine where fuel_id='" + fuelId + "'AND model_id= '" + modelId + "' AND Inventory_Item.engine_id=Engine.engine_id";
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = load;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String x = (dr[0].ToString());
                b[i] = x;
                i++;
            }

            con.Close();
            return b;

        }


        public String[] generateComboItems_Year(String engId, String modelId)
        {
            String[] b = new String[100];
            int i = 0;
            string load = "select distinct year from Inventory_Item inner join Yearr where engine_id='" + engId + "'AND model_id='" + modelId + "' AND Inventory_Item.year_id=Yearr.year_id";
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = load;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String x = (dr[0].ToString());
                b[i] = x;
                i++;
            }

            con.Close();
            return b;

        }

        public String[] generateComboItems_Cat(String yearId, String modelId)
        {
            String[] b = new String[100];
            int i = 0;
            string load = "select distinct cat_name from Inventory_Item inner join Category where model_id='" + modelId + "'AND year_id='" + yearId + "'AND Inventory_Item.cat_id=Category.cat_id";
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = load;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String x = (dr[0].ToString());
                b[i] = x;

                i++;
            }

            con.Close();
            return b;

        }

        public String[] generateComboItems_Part(String catId, String modelId)
        {
            String[] b = new String[100];
            int i = 0;
            string load = "select distinct part_name from Inventory_Item inner join SparePart where cat_id='" + catId + "'AND model_id='" + modelId + "' AND Inventory_Item.part_id=SparePart.part_id";
            con.Open();
            cmd = con.CreateCommand();
            cmd.CommandText = load;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                String x = (dr[0].ToString());
                b[i] = x;

                i++;
            }

            con.Close();
            return b;

        }
        public string GetId(string check, string table)
        {

            if (table == "Brand")
            {

                String load = "select brand_id from Brand where brand_name='" + check + "' ";

                itemCode = "";
                try
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = load;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            itemCode = dr[0].ToString();
                        }
                    }

                    con.Close();
                }
                catch (Exception e)
                {

                   //
                }

            }

            if (table == "Model")
            {
                String load = "select model_id from Model where model_name='" + check + "' ";

                itemCode = "";
                try
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = load;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            itemCode = dr[0].ToString();
                        }
                    }

                    con.Close();
                }
                catch (Exception e)
                {

                   //
                }

            }

            if (table == "Fuel")
            {
                String load = "select fuel_id from Fuel where fuel_type='" + check + "' ";

                itemCode = "";
                try
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = load;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            itemCode = dr[0].ToString();
                        }
                    }

                    con.Close();
                }
                catch (Exception e)
                {

                   //
                }

            }

            if (table == "Engine")
            {
                String load = "select engine_id from Engine where engine_capacity='" + check + "' ";

                itemCode = "";
                try
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = load;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            itemCode = dr[0].ToString();
                        }
                    }

                    con.Close();
                }
                catch (Exception e)
                {

                   //
                }

            }


            if (table == "Year")
            {
                String load = "select year_id from Yearr where year='" + check + "' ";

                itemCode = "";
                try
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = load;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            itemCode = dr[0].ToString();
                        }
                    }

                    con.Close();
                }
                catch (Exception e)
                {

                   //
                }

            }


            if (table == "Category")
            {
                String load = "select cat_id from Category where cat_name='" + check + "' ";

                itemCode = "";
                try
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = load;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            itemCode = dr[0].ToString();

                        }
                    }

                    con.Close();
                }
                catch (Exception e)
                {

                   //
                }

            }



            if (table == "SparePart")
            {
                String load = "select part_id from SparePart where part_name='" + check + "' ";

                itemCode = "";
                try
                {
                    con.Open();
                    cmd = con.CreateCommand();
                    cmd.CommandText = load;
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            itemCode = dr[0].ToString();
                        }
                    }

                    con.Close();
                }
                catch (Exception e)
                {

                   //
                }

            }


            return itemCode;
        }

        public String[][] getResults(String sql)
        {
            String[][] array = new String[8][];
            String[] cats= new String[8];
            
            String cat_id,part_name,prev_id="dummy";
            int i = 0;
       

            try
            {
                
                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandText = sql;
                dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        cat_id = dr[0].ToString();

                        part_name = dr[1].ToString();
                      
                        if (cat_id != prev_id) {
                            String[] temp = new String[65];
                            temp[0] = cat_id;
                           

                                
                                
                             array[i] = temp;
                             array[i][1] = part_name;
                           
                         

                            i++;
                            
                            prev_id = cat_id;
                       
                        }else{
                            int j=1;
                            while (array[i-1][j] != null) {
                                j++;
                            
                            }
                            array[i-1][j] = part_name;

                            
                           
                           // array[[cat_id,part1,part2,...],[cat_id,part1,part2,...],[],...] 
                            
                        //cat_id array
                        //part_name array
                        }
                        
                    }
                }
                

                con.Close();
            }
            catch (Exception e)
            {

                //
            }



            return array;

        }

        public String genQuantity(String sql)
        {
            String q="";
            try
            {
                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandText = sql;
                dr = cmd.ExecuteReader();
                
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        q = dr[0].ToString();
                    }
                }

                con.Close();
            }
            catch (Exception e)
            {

                //
            }



            return q;
        }

        public String getName(String cat_id) {


            String sql = "select cat_name from category where cat_id='" + cat_id + "'";
            String q = "";
            try
            {
                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandText = sql;
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                         q= dr[0].ToString();
                    }
                }

                con.Close();
            }
            catch (Exception e)
            {

                //
            }
            return q;
        
        
        }
        public String[][] getCli(String sql) {

            ArrayList list = new ArrayList();
            try
            {
                con.Open();
                cmd = con.CreateCommand();
                cmd.CommandText = sql;
                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ArrayList list2 = new ArrayList();
                        list2.Add(dr[0].ToString());
                        list2.Add(dr[1].ToString());
                        list2.Add(dr[2].ToString());
                        list2.Add(dr[3].ToString());
                        list2.Add(dr[4].ToString());
                        list2.Add(dr[5].ToString());
                        list.Add((String[])list2.ToArray(typeof(String)));
                    }
                }

                con.Close();
            }
            catch (Exception e)
            {

                //
            }
            return (String[][])list.ToArray(typeof(String[]));
        
        
        
        
        }

    }

    
}