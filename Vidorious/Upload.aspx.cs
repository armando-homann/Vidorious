using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Vidorious
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Make current nav item active
            HtmlGenericControl liMasterNav = new HtmlGenericControl("li");
            liMasterNav = (HtmlGenericControl)Master.FindControl("navVideos");
            liMasterNav.Attributes.Add("class", "active");

            // Display breadcrumb
            Breadcrumbs();
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
            spanMasterBc2.InnerText = "Upload";
            liMasterBc2.Controls.Add(spanMasterBc2);
            bcWrapper.Controls.Add(liMasterBc2);
        }
    }
}