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
    public partial class CashierWithdraw : System.Web.UI.Page
    {
        string cs = string.Empty;
        SqlConnection cn;
        SqlCommand cmd;
        string query = string.Empty;


        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = string.Empty;
            if (Session["uname"] != null)
            {
                uname = Session["uname"].ToString();
                Label2.Text = "Hello " + uname + " Welcome to Cashier Withdraw Page <br>" ;
                Label2.ForeColor = Color.Green;
                cs = "server=sasanka;user id=sa;password=1234;database=BankDB";
                cn = new SqlConnection(cs);
                cn.Open();
                query = "select balance from tblCashiers where uname=@uname";
                cmd = new SqlCommand(query, cn);
                cmd.Parameters.Add(new SqlParameter("@uname", uname));
                int accountbalance = Convert.ToInt32(cmd.ExecuteScalar());
                Label1.Text = "Hello "+uname+" Your accountbalance is:" + accountbalance;
                Label1.ForeColor = Color.Blue;
            }
                   

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n = Convert.ToInt32(TextBox1.Text);
            string uname = string.Empty;
            cs = "server=sasanka;user id=sa;password=1234;database=BankDB";
            cn = new SqlConnection(cs);
            cn.Open();
            uname = Session["uname"].ToString();
            
            query = "select balance from tblCashiers where uname=@uname ";
            cmd = new SqlCommand(query, cn);
            cmd.Parameters.Add(new SqlParameter("@uname", uname));
            int accountbalance = Convert.ToInt32(cmd.ExecuteScalar());
            if (accountbalance < 0)
            {
                Label1.Text = "sorry, You can not withdraw money at this time, please deposit money";
                Label1.ForeColor = Color.Aqua;
            }
            else if (accountbalance - n < 0)
            {
                Label1.Text = "Sorry, You do not have sufficient funds to make this transaction <br>" +
                    "please deposit money and try again later";
                Label1.ForeColor = Color.AliceBlue;
            }
            else
            {
                query = "update tblCashiers set balance=balance-" + n + " where uname=@uname";
                cmd = new SqlCommand(query, cn);
                cmd.Parameters.Add(new SqlParameter("@uname", uname));
                int x = cmd.ExecuteNonQuery();
                if (x == 1)

                    Label1.Text = "Money withdrawn successfully";
                Label1.ForeColor = Color.Chartreuse;

            }

        }
    }
}