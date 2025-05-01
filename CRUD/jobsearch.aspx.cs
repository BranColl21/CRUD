using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace CRUD
{
    public partial class jobsearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("read.aspx");
            }
            
            if (!IsPostBack)
            {
                LoadTopJobs();
            }
        }
        private void LoadTopJobs()
        {
            // SQL query to get the top 10 most recently created jobs
            string query = "SELECT TOP 10 job_id, title, description, budget, deadline, created_at " +
                           "FROM Jobs ORDER BY created_at DESC";

            // Create SQL connection
            using (SqlConnection conn = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                // Create the command
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Create a DataAdapter to fetch data
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    // Create a DataTable to hold the data
                    DataTable dt = new DataTable();

                    // Fill the DataTable
                    da.Fill(dt);

                    // Bind the data to GridView
                    
                }
            }
        }

       
    }
}