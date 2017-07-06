using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace BankingApplication.CustomerFolder
{
    public partial class CustomerLoginPage : System.Web.UI.Page
    {
        private bool AuthenticateCustomerFromDB(string uname, string pwd)
        {
            string cs = "server=sasanka;user id=sa;password=1234;database=BankDB";
            string query = "select * from tblCustomers where uname=@uname and pwd=@pwd";
            SqlConnection cn = new SqlConnection(cs);
            cn.Open();
            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.Parameters.Add(new SqlParameter("@uname", uname));
            cmd.Parameters.Add(new SqlParameter("@pwd", pwd));
            bool status = false;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
                status = true;
            return status;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (AuthenticateCustomerFromDB(TextBox1.Text, TextBox2.Text))
            {
                Session["uname"] = TextBox1.Text;
                Response.Redirect("CustomerDashBoard.aspx");
            }
            else
            {
                Label1.Text = "invalid input credentials";
                Label1.ForeColor = Color.Red;
            }
        }
    }
}