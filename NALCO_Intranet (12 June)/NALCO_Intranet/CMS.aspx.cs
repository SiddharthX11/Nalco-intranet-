using DocumentFormat.OpenXml.Drawing;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NALCO_Intranet_CMS : System.Web.UI.Page
{
    private string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindTypeDropdown();
            string selectedValue = ddlUploadType.SelectedValue;
            if (selectedValue == "content")
            {
                type.Visible = true;
                contsub.Visible = true;
                descriptions.Visible = true;
                fileUpload.Visible = true;
            }

        }
       
    }
    protected void BindTypeDropdown()
    {
        string loggedInUserPersNo = Page.User.Identity.Name;

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            string query = "select id,Name from CMS.cms_contentType_Mst";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@pers_no", loggedInUserPersNo);
                conn.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    ddltype.DataSource = reader;
                    ddltype.DataTextField = "Name";
                    ddltype.DataValueField = "id";
                    ddltype.DataBind();
                }
            }
        }
        ddltype.Items.Insert(0, new ListItem("-- Select Type --", ""));
    }
    protected void ddlUploadType_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedValue = ddlUploadType.SelectedValue;
       
        if (selectedValue == "content")
        {
            type.Visible = true;
            contsub.Visible = true;
            descriptions.Visible = true;
            fileUpload.Visible = true;
        }
        else if (selectedValue == "image")
        {
            descriptions.Visible = true;
            fileUpload.Visible = true;
            type.Visible = false;
            contsub.Visible = false;
        }

    }
    protected void btnsubmit_click(object sender, EventArgs e)
    {
        try
        {
            string fileName = string.Empty;
            string filePath = string.Empty;
            string uniqueFileName = string.Empty;
            if (Uploadfile.Visible && Uploadfile.HasFile)
            {
                fileName = System.IO.Path.GetFileName(Uploadfile.PostedFile.FileName);
                filePath = Server.MapPath("~/NALCO_Intranet/Uploads/") + fileName;
                uniqueFileName = string.Format("{0}{1}", Guid.NewGuid(), System.IO.Path.GetExtension(fileName));
                string uploadDir = Server.MapPath("~/Uploads/");
                if (!Directory.Exists(uploadDir))
                {
                    Directory.CreateDirectory(uploadDir);
                }

                Uploadfile.SaveAs(filePath);
            }

           

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO CMS.cms_upload_Content (uploadtype, contenttype, cont_Subject, cont_Description,uploadedFile,cont_status,InsertedBy,InsertedOn)VALUES (@UploadType, @Type, @Subject, @Description, @FileName,@Status,@InsertedBy,@InsertedOn)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters with proper data types
                    cmd.Parameters.Add("@UploadType", SqlDbType.NVarChar).Value =ddlUploadType.SelectedValue ?? "";
                    cmd.Parameters.Add("@Type", SqlDbType.NVarChar).Value = ddltype.SelectedValue ?? "";
                    cmd.Parameters.Add("@Subject", SqlDbType.NVarChar).Value = txtsubject.Text.Trim();
                    cmd.Parameters.Add("@Description", SqlDbType.NVarChar).Value = description.Text.Trim();
                    cmd.Parameters.Add("@FileName", SqlDbType.NVarChar).Value = uniqueFileName;
                    cmd.Parameters.Add("@Status", SqlDbType.NVarChar).Value = 1; // Set appropriate status
                    cmd.Parameters.Add("@InsertedBy", SqlDbType.NVarChar).Value = Page.User.Identity.Name;
                    cmd.Parameters.Add("@InsertedOn", SqlDbType.DateTime).Value = DateTime.Now;

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            // Show success message
            lblMessage.Text = "Record saved successfully!";
            lblMessage.ForeColor = System.Drawing.Color.Green;

            // Optionally reset form
            ResetForm();
        }
        catch (Exception ex)
        {
            // Show error message
            lblMessage.Text = "An error occurred while saving the record. Please try again.";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    }
    private void ResetForm()
    {
        ddlUploadType.SelectedIndex = 0;
        if (type.Visible) ddltype.SelectedIndex = 0;
        if (contsub.Visible) txtsubject.Text = string.Empty;
        if (descriptions.Visible) description.Text = string.Empty;
        if (Uploadfile.Visible) Uploadfile.Dispose();
      
    }
}