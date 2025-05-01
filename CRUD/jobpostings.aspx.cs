using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;


namespace CRUD
{
    public partial class jobpostings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("read.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Create and open the SQL connection
            using (SqlConnection RegCon = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                // Define your Insert SQL command directly in the code
                string insertQuery = "INSERT INTO Jobs (title, description, budget, deadline) " +
                                     "VALUES (@Title, @Description, @Budget, @Deadline)";

                // Create the command with the connection and the query
                using (SqlCommand RegCommand = new SqlCommand(insertQuery, RegCon))
                {
                    // Add parameters with values
                    RegCommand.Parameters.AddWithValue("@Title", txtTitle.Text.Trim());
                    RegCommand.Parameters.AddWithValue("@Description", txtDesc.Text.Trim());
                    RegCommand.Parameters.AddWithValue("@Budget", txtBudget.Text.Trim());
                    RegCommand.Parameters.AddWithValue("@Deadline", txtDeadline.Text.Trim());

                    // Open connection and execute
                    RegCon.Open();
                    RegCommand.ExecuteNonQuery();
                }
            }

            // Redirect after successful insert
            Response.Redirect("jobsearch.aspx");
        }

      
    }
}