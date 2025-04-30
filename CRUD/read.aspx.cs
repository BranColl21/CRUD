using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//add class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient; 

namespace CRUD
{
    public partial class read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //declare variables for our credentials
            string sUID = "";
            string sPass = "";
            string sUser = "";

            //Declare an sqldatareader to store query results 
            SqlDataReader theReader;

            //Declare an sqlconnection to connect to the database
            SqlConnection theConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            //Declare an sqlconnection and set the select statement
            SqlCommand theCommand = new SqlCommand(SqlDataSource1.SelectCommand);

            //set the connection for our command to use 
            theCommand.Connection = theConnection;

            //Set the parameters
            //parameter for email from the textbox
            theCommand.Parameters.AddWithValue("@Email", txtEmail.Text);

            //parameter for password from the textbox
            theCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
            //open the connection 
            theConnection.Open();

            //execute the selectcommand and assign them to myReader
            theReader = theCommand.ExecuteReader(CommandBehavior.CloseConnection);

            //while the reader is being populated, assign the values from the query to the variables 

            while (theReader.Read())
            {
                sUID = theReader.GetString(0);
                sPass = theReader.GetString(1);
                sUser = theReader.GetString(2) + " " + theReader.GetString(3);
            }

            if (txtEmail.Text == sUID && txtPassword.Text == sPass)
            {
                //success, send to success page and create session variable
                Session["user"] = sUser;
                Session["email"] = sUID;
                Response.Redirect("success.aspx");
            }
            else
            {
                //display an error
                lblMsg.Text = "Invalid User or Password...TRY AGAIN";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPassword.Text = "";
            txtEmail.Text = "";
        }
    }
}