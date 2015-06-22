using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Vidorious
{
    public partial class Videos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Make current nav item active
            HtmlGenericControl liMasterNav = new HtmlGenericControl("li");
            liMasterNav = (HtmlGenericControl)Master.FindControl("navVideos");
            liMasterNav.Attributes.Add("class", "active");

            // Display breadcrumb
            Breadcrumbs();

            uploadPanel.Visible = false;
        }

        // Build Breadcrumb
        public void Breadcrumbs()
        {
            HtmlGenericControl liMasterBc1 = new HtmlGenericControl("li");
            HtmlGenericControl spanMasterBc1 = new HtmlGenericControl("span");
            HtmlGenericControl liMasterBc2 = new HtmlGenericControl("li");
            HtmlGenericControl spanMasterBc2 = new HtmlGenericControl("span");

            HtmlGenericControl bcWrapper = new HtmlGenericControl("ol");
            bcWrapper = (HtmlGenericControl)Master.FindControl("bcWrapper");

            // First Breadcrumb
            spanMasterBc1.InnerText = "Videos";
            liMasterBc1.Controls.Add(spanMasterBc1);
            bcWrapper.Controls.Add(liMasterBc1);

            // Second Breadcrumb
            spanMasterBc2.InnerText = "Watch";
            liMasterBc2.Controls.Add(spanMasterBc2);
            bcWrapper.Controls.Add(liMasterBc2);
        }

        protected void btnVideoUpload_Click(object sender, EventArgs e)
        {
            if (fileUpload.PostedFile != null)
            {
                using (BinaryReader br = new BinaryReader(fileUpload.PostedFile.InputStream))
                {
                    BusinessLogic.Validator valid = new BusinessLogic.Validator();
                    BusinessLogic.VideoUpload videoUpload = new BusinessLogic.VideoUpload();

                    try
                    {
                        byte[] bytes = br.ReadBytes((int)fileUpload.PostedFile.InputStream.Length);
                        string fileExt = Path.GetExtension(fileUpload.PostedFile.FileName).ToLower();

                        BusinessLogic.VideoUploadObject videoUploadObject = new BusinessLogic.VideoUploadObject()
                        {
                            Id = Guid.NewGuid(),
                            Name = Path.GetFileName(fileUpload.PostedFile.FileName),
                            Type = "video/" + fileExt,
                            Data = bytes,
                            DateCreated = DateTime.Now
                        };

                        valid = videoUpload.UploadVideos(videoUploadObject);

                        if (valid.Status == BusinessLogic.Constants.Success)
                        {
                            lblMessage.Text = "Video Uploaded";
                        }
                    }
                    catch (Exception ex)
                    {
                        valid = new BusinessLogic.Validator() { ID = Guid.NewGuid(), Status = ex.Message };
                    }
                }
            }
        }

        protected void btnShowVideoUpload_Click(object sender, EventArgs e)
        {
            uploadPanel.Visible = true;
        }
    }
}