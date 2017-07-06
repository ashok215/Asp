using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace BankingApplication.CashierFolder
{
    public partial class CashierDeposit : System.Web.UI.Page
    {
        string cs = string.Empty;
        string query = string.Empty;
        SqlConnection cn = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = string.Empty;
            if (Session["uname"] != null)
            {
                uname = Session["uname"].ToString();
                Label1.Text = "Hello " + uname + ", welcome to Deposit Page";
                cs = "server=sasanka;user id=sa;password=1234;database=BankDB";
                query = "select balance from tblCashiers where uname=@uname";
                cn = new SqlConnection(cs);
                cn.Open();
                cmd = new SqlCommand(query, cn);
                cmd.Parameters.Add(new SqlParameter("@uname", uname));
                int accountBalance = Convert.ToInt32(cmd.ExecuteScalar());
                Label2.Text = "Your account balance is : " + accountBalance;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uname = Session["uname"].ToString();
            int n = Convert.ToInt32(TextBox1.Text);
            cs = "server=sasanka;user id=sa;password=1234;database=BankDB";
            cn = new SqlConnection(cs);
            cn.Open();
            query = "update tblCashiers set balance=balance+" + n + "where uname=@uname";
            cmd = new SqlCommand(query, cn);
            cmd.Parameters.Add(new SqlParameter("@uname", uname));
            int x = cmd.ExecuteNonQuery();
            if (x == 1)
                Label3.Text = "Amount deposited successfully ";

        }
    }
}