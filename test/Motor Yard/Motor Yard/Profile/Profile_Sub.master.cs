using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motor_Yard.Profile
{
    public partial class Profile_Sub : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //company_name.Text = "ABC Company [pvt] Limited";
            company_name.Text = (String)Session["company"]+" [PVT] Limited";
            company_email.Text = (String)Session["Email"];
            company_area.Text = (String)Session["area"];
        }
    }
}