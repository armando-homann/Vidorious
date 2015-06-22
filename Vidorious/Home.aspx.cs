using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Vidorious
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl liMasterNav = new HtmlGenericControl("li");
            liMasterNav = (HtmlGenericControl)Master.FindControl("navHome");
            liMasterNav.Attributes.Add("class", "active");
        }
    }
}