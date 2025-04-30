using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace CRUD
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //declare a sqlconnection
            SqlConnection RegCon = new SqlConnection(SqlDataSource1.ConnectionString);

            //declare a command
            SqlCommand RegCommand = new SqlCommand(SqlDataSource1.InsertCommand);

            RegCommand.Connection = RegCon;

            RegCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
            RegCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
            RegCommand.Parameters.AddWithValue("@FName", txtFname.Text);
            RegCommand.Parameters.AddWithValue("@LName", txtLname.Text);
            RegCommand.Parameters.AddWithValue("@YOB", txtYOB.Text);

            //open the connection
            RegCon.Open();

            //execute the inset command
            RegCommand.ExecuteNonQuery();

            //close the connection
            RegCon.Close();

            //send to a page
            Response.Redirect("Default.aspx");
        }
    }
}