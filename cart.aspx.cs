using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace covidsheild
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page lastpage = this.PreviousPage;

            List<Product> products = Request.QueryString[0];
            GridView1.DataSource = products;
            GridView1.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("server = localhost; user id = root;Password=root; database = covidsheild");
            con.Open();
            string query = "insert into shipping(address,modeofpayment) values(@address,CoD);";
            MySqlCommand cmd = new MySqlCommand(query, con);
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@address", TextBox1.Text.Trim());
            Response.Redirect("thanks.aspx");
            
        }
    }
    
}