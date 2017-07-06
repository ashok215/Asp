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
    public partial class FundTransfer : System.Web.UI.Page
    {
        string cs = string.Empty;
        string query = string.Empty;
        SqlConnection cn = null;
        SqlCommand cmd = null;
        public void Page_Load(object sender, EventArgs e)
        {
            string uname = string.Empty;
            if (Session["uname"] != null)
            {
                uname = Session["uname"].ToString();
                Label1.Text = "Hello " + uname + ", welcome to Fund Transfer page";
                Label1.ForeColor = Color.Green;
                cs = "server=sasanka;user id=sa;password=1234;database=BankDB";
                query = "select balance from tblCustomerBalance where uname=@uname";
                cn = new SqlConnection(cs);
                cn.Open();
                cmd = new SqlCommand(query, cn);
                cmd.Parameters.Add(new SqlParameter("@uname", uname));
                int accountBalance = Convert.ToInt32(cmd.ExecuteScalar());
                Label2.Text = "Your account balance is : " + accountBalance;
                Label2.ForeColor = Color.HotPink;
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string uname = string.Empty;
            uname = Session["uname"].ToString();
            int n = Convert.ToInt32(TextBox1.Text);
            query = "select balance from tblcustomerbalance where uname=@uname";
            cs = "server=sasanka; user id=sa;password=1234;database=BankDB";
            cn = new SqlConnection(cs);
            cn.Open();
            cmd = new SqlCommand(query, cn);
            cmd.Parameters.Add(new SqlParameter("@uname", uname));
            int balance = Convert.ToInt32(cmd.ExecuteScalar());
            if (balance < 0)
            {
                Label3.Text = "Sorry, You do not have sufficient funds to make a transfer";
                Label3.ForeColor = Color.IndianRed;
            }
            else if (balance - n < 0)
            {
                Label3.Text = "Sorry, you are trying to overdraft the funds<br>" +
                    "please deposit money and try again";
                Label3.ForeColor = Color.Khaki;
            }
            else
            {
                query = "update tblcustomerbalance set balance=balance-" + n + " where uname=@uname ";


                cmd = new SqlCommand(query, cn);
                cmd.Parameters.Add(new SqlParameter("@uname", uname));
                int x = cmd.ExecuteNonQuery();
                if (x == 1)
                    Label3.Text = "funds transferred successfully <br>";
                cn.Close();


                query = "update tblcustomerbalance set balance=balance+" + n + " where uname= '" + DropDownList1.SelectedValue + "'";
                cs = "server=sasanka;user id=sa;password=1234;database=BankDB";
                cn = new SqlConnection(cs);
                cn.Open();
                cmd = new SqlCommand(query, cn);
                cmd.Parameters.Add(new SqlParameter("@uname", DropDownList1.SelectedValue));
                int y = cmd.ExecuteNonQuery();
                if (y == 1)
                    Label3.Text += "funds transferred to " + DropDownList1.SelectedValue;
            }
            /*string uname = Session["uname"].ToString();
            cs = "server=sasanka; user id=sa;password=1234;database=BankDB";
            cn = new SqlConnection(cs);
            cn.Open();
            query = "select balance from tblCustomerbalance where uname=@uname";
            cmd = new SqlCommand(query, cn);
            cmd.Parameters.Add(new SqlParameter("@uname", uname));
            int accountbalance = Convert.ToInt32(cmd.ExecuteScalar());
            int n = Convert.ToInt32(TextBox1.Text);
            accountbalance -= n;           
            Label3.Text = "Funds transferred successfully <br> , Current Balance is"+accountbalance;*/



        }
    }
}