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
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["email"].ToString() == txtEmail.Text)
            {
                SqlConnection dcon = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand dcommand = new SqlCommand(SqlDataSource1.DeleteCommand);
                dcommand.Connection = dcon;
                dcommand.Parameters.AddWithValue("Email", Session["email"].ToString());
                dcon.Open();
                dcommand.ExecuteNonQuery();
                dcon.Close();
                Session["user"] = null;
                Session["email"] = null;
                Response.Redirect("successbye.aspx");
            }
        }
    }
}
           