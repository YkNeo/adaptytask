using MySql.Data.MySqlClient;
using System;
using System.Data.SqlClient;
using MySql.Data;

namespace covidsheild
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("server = localhost; user id = root;Password=root; database = covidsheild");
            con.Open();
            string query = "select count(*) from users where username=@username AND password=@password";
            MySqlCommand cmd = new MySqlCommand(query,con);
            cmd.Parameters.AddWithValue("@username", username.Text.Trim());
            cmd.Parameters.AddWithValue("@password", password.Text.Trim());
           string flag = Convert.ToString(cmd.ExecuteScalar());
            if (flag == "")
                Label1.Visible = true;
            if (username.Text == "admin" && flag == "1")
            {
                Response.Redirect("WebForm3.aspx");
            else if (flag == "1")
                    Response.Redirect("WebForm2.aspx");
            }
            else
                Label1.Visible = true;
            con.Close();
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            username.Text = "";
            password.Text = "";
            Label1.Visible = false;
        }
    }
}