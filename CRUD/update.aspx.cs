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
                if (Session["user"] != null)
                {
                    LoadUserData();
                    ToggleControls(false);
                    UncheckAllCheckboxes();
                }
                else
                {
                    Response.Redirect("default.aspx");
                }
            }
        }
        private void LoadUserData()
        {
            using (SqlConnection laConnection = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                string selectQuery = "SELECT Email, Password, FName, LName, YOB FROM dbo.Login WHERE Email = @Email";
                SqlCommand laCommand = new SqlCommand(selectQuery, laConnection);
                laCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                laConnection.Open();
                SqlDataReader laReader = laCommand.ExecuteReader(CommandBehavior.CloseConnection);

                if (laReader.Read())
                {
                    lblEmail.Text = laReader.GetString(0);
                    lblPassword.Text = laReader.GetString(1);
                    lblFname.Text = laReader.GetString(2);
                    lblLname.Text = laReader.GetString(3);
                    lblYOB.Text = laReader.GetInt32(4).ToString();
                }
            }
        }
        private void ToggleControls(bool visible)
        {
            txtEmail.Visible = visible;
            txtPassword.Visible = visible;
            txtPasswordC.Visible = visible;
            txtFname.Visible = visible;
            txtLname.Visible = visible;
            txtYOB.Visible = visible;

            rfvEmail.Enabled = visible;
            rfvPassword.Enabled = visible;
            cvPassword.Enabled = visible;
            rfvFname.Enabled = visible;
            rfvLname.Enabled = visible;
            revYOB.Enabled = visible;

            lblNewValue.Visible = visible;
            lblPasswordC.Visible = visible;
        }
        private void UncheckAllCheckboxes()
        {
            cbFname.Checked = false;
            cbLname.Checked = false;
            cbEmail.Checked = false;
            cbPassword.Checked = false;
            cbYOB.Checked = false;
        }

        protected void cbEmail_CheckedChanged(object sender, EventArgs e)
        {
            txtEmail.Visible = cbEmail.Checked;
            rfvEmail.Enabled = cbEmail.Checked;
            lblNewValue.Visible = cbEmail.Checked;
            lblEmail.Visible = cbEmail.Checked;
        }

        protected void cbPassword_CheckedChanged(object sender, EventArgs e)
        {
            bool visible = cbPassword.Checked;
            txtPassword.Visible = visible;
            txtPasswordC.Visible = visible;
            cvPassword.Enabled = visible;
            rfvPassword.Enabled = visible;
            lblNewValue.Visible = visible;
            lblPasswordC.Visible = visible;
            lblPassword.Visible = visible;
        }

        protected void cbFname_CheckedChanged(object sender, EventArgs e)
        {
            txtFname.Visible = cbFname.Checked;
            rfvFname.Enabled = cbFname.Checked;
            lblNewValue.Visible = cbFname.Checked;
            lblFname.Visible = cbFname.Checked;
        }

        protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
        {
            txtLname.Visible = cbLname.Checked;
            rfvLname.Enabled = cbLname.Checked;
            lblNewValue.Visible = cbLname.Checked;
            lblLname.Visible = cbLname.Checked;
        }

        protected void cbYOB_CheckedChanged(object sender, EventArgs e)
        {
            txtYOB.Visible = cbYOB.Checked;
            revYOB.Enabled = cbYOB.Checked;
            lblNewValue.Visible = cbYOB.Checked;
            lblYOB.Visible = cbYOB.Checked;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string oldEmail = Session["email"].ToString();
            string newEmail = cbEmail.Checked ? txtEmail.Text : lblEmail.Text;
            string newPassword = cbPassword.Checked ? txtPassword.Text : lblPassword.Text;
            string newFname = cbFname.Checked ? txtFname.Text : lblFname.Text;
            string newLname = cbLname.Checked ? txtLname.Text : lblLname.Text;
            string newYOB = cbYOB.Checked ? txtYOB.Text : lblYOB.Text;

            using (SqlConnection UConnection = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                string updateQuery = @"
                    UPDATE dbo.Login 
                    SET Email = @NewEmail, Password = @Password, 
                        FName = @FName, LName = @LName, YOB = @YOB 
                    WHERE Email = @OldEmail";

                SqlCommand UCommand = new SqlCommand(updateQuery, UConnection);
                UCommand.Parameters.AddWithValue("@NewEmail", newEmail);
                UCommand.Parameters.AddWithValue("@Password", newPassword);
                UCommand.Parameters.AddWithValue("@FName", newFname);
                UCommand.Parameters.AddWithValue("@LName", newLname);
                UCommand.Parameters.AddWithValue("@YOB", Convert.ToInt32(newYOB));
                UCommand.Parameters.AddWithValue("@OldEmail", oldEmail);

                UConnection.Open();
                UCommand.ExecuteNonQuery();
            }

            // Update session email if it was changed
            if (cbEmail.Checked)
            {
                Session["email"] = newEmail;
            }

            lblStatus.Text = "Your profile has been updated successfully.";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Clear textboxes
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPasswordC.Text = "";
            txtFname.Text = "";
            txtLname.Text = "";
            txtYOB.Text = "";
            lblStatus.Text = "";

            // Uncheck checkboxes
            UncheckAllCheckboxes();

            // Hide all the textboxes and validators
            ToggleControls(false);
        }

        
    }
}