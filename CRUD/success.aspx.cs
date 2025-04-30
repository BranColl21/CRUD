﻿using System;
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
            if (Session["user"] != null)
            {
                //welcome message
                lblMsg.Text = Session["user"].ToString();


            }
            else
            {
                //not logged in 
                Response.Redirect("read.aspx");

            }

        }
        protected void btnLogoff_Click1(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["email"] = null;
            Response.Redirect("read.aspx");
        }
    }
}