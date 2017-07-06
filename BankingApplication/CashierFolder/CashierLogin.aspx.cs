using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
namespace BankingApplication.CashierFolder
{
    public partial class CashierLogin : System.Web.UI.Page
    {
        private bool AuthenticateUserFromDB(string uname, string pwd)
        {
            bool status = false;
            SqlConnection cn = new SqlConnection("server=sasanka;user id=sa;password=1234;database=BankDB");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from tblCashiers where uname=@uname and pwd=@pwd", cn);
            cmd.Parameters.Add(new SqlParameter("@uname", uname));
            cmd.Parameters.Add(new SqlParameter("@pwd", pwd));
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
            if (AuthenticateUserFromDB(TextBox3.Text, TextBox4.Text))
            {
                Session["uname"] = TextBox3.Text;
                Response.Redirect("CashierDashBoardPage.aspx");
            }
            else
            {
                Label1.Text = "invalid input credentials";
                Label1.ForeColor = Color.Red;
            }
        }
    }
}