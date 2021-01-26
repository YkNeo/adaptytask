using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using MySql.Data.MySqlClient;
using MySql.Data;

namespace covidsheild
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        public void Page_Load(object sender, EventArgs e)
        {
            Image1.Visible = false;
            prod_price.Visible = false;
            Button1.Visible = false;
            
        }
        string[] price = { };
        string[] quantity = { };
        int i;
        //object o = new object();
        List<Product> products = new List<Product>;
        public void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            MySqlConnection con=new MySqlConnection("server = localhost; user id = root;Password=root; database = covidsheild");
            
            con.Open();
            
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = con;
            Image1.Visible = true;
            prod_price.Visible = true;
            Image1.ImageUrl = "products/" + DropDownList1.Text + ".jpg";
            string query = "Select price,quantity from products";
            //cmd.CommandText = query;
            
            MySqlDataAdapter adapter = new MySqlDataAdapter();
            adapter.SelectCommand = new MySqlCommand(query, con);
            DataTable dataset = new DataTable();
            adapter.Fill(dataset);
            GridView1.DataSource = dataset;
            foreach (DataRow dr in dataset.Rows)
            {
                price[i] = dr["price"].ToString();
                quantity[i] = dr["quantity"].ToString();
            }
            i = DropDownList1.SelectedIndex;
            prod_price.Text = "₹" + price[i];
            Label1.Text ="left"+ quantity[i]+"pieces";
            Button1.Visible = true;
        }

        public void Button1_Click(object sender, EventArgs e)
        {
            ack.Visible = true;
            Product p = new Product(DropDownList1.SelectedValue,price[DropDownList1.SelectedIndex],1);
            p.addToCart();
            products.Add(p);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write(products);
            Response.Redirect("cart.aspx?products=" + products);
        }
    }
}