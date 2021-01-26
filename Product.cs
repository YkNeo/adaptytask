using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;

namespace covidsheild
{
    public class Product
    {
        int price,quantity;
        string name;
        MySqlConnection conn = new MySqlConnection("server = localhost; user id = root;Password=root; database = covidsheild");
        
        
        public Product(string name,string price,int quantity)
        {
            this.name = name;
            this.price = Convert.ToInt32(price);
            this.quantity = quantity;
            
            
        }

        public void addToCart()
        {
            conn.Open();
            string query = "update products set quantity=quantity-1 where name=@pname AND quantity>=0";
            MySqlCommand cmd = new MySqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@pname", name);


        }

    }
}