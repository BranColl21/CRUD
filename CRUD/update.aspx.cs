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
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //asking for information from the server withut a button being clicked 
            if(!IsPostBack)
            {
                if (Session["user"] !=null)
                {
                    //display the current users information from the database.
                    //this is the same code as the read and login pages.
                    //declare a reader
                    //declare a connection 
                    //declare a command
                    //open connection
                    //execute the command

                    while (DispCurrent.Read())
                    {
                        lblEmail.Text = DispCurrent.GetString(0);
                        //the rest of the labels
                    }

                    //close the connection 

                    //Turn off textbox controls,
                    //Only show when checkbox is clicked
                    txtPassword.Visible = false;
                    txtPassC.Visible = false;

                    //turn on validation controls 
                    rfvPassword.Visible = false;
                    cvPasswords.Visible = false;

                    //hide the update labels 
                    lblNewValue.Visible = false;
                    lblPassC.Visible = false;

                    //make sure all of the checkboxes are unchecked
                    cbFname.Checked = false;

                }
            else
                {
                    Response.Redirect("default.aspx");
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //This is the code to move values from the textboxes to the insert statement
            //Either the new value or the old value is moved based on the checkboxes

            //declare a connection

            //declare a command

            //set parameter for email
            UCommand.Parameters.AddWithValue("@Email", Session["email"].ToString);

            //set parameter for password
            if (cbpassword.Checked == true)
            {
                UCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
            }
            else
            {
                UCommand.Parameters.AddWithValue("@Password", lblPassword.Text);
            }

            //open the connection 

            //execute the command 

            //close the connection 

            //show users the changes 
            Response.Redirect("update.aspx");
        }
         
        protected void cbpassword_CheckedChanged(object sender, EventArgs e)
        {
            if(cbpassword.Checked == true)
            {
                txtPassword.Visible = true;
                txtPassC.Visible = true;
                cvPasswords.Enabled = true;
                lblNewValue.Visible = true;
                lblPassC.Visible = true;
            }
            else
            {
                txtPassword.Visible = false;
                txtPassC.Visible = false; 
            }


        }
    }
}