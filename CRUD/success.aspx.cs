using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CRUD
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //did the user login
            if (Session["user"] !=null)
            {
                //welcome message
                Response.Redirect("read.aspx");

            }
            else
            {
                //not logged in 
                
                lblMsg.Text = Session["user"].ToString();
            }

        }

        protected void btnLogoff_Click(object sender, EventArgs e)
        {
            Response.Redirect("read.aspx");
        }
    }
}