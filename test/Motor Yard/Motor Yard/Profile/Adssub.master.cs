using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Motor_Yard.Profile
{
    public partial class Advertisment : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                create.Visible = true;
            }
        }

        protected void create_Click(object sender, EventArgs e)
        {
            save.Visible = true;
            Cancel.Visible = true;
            create.Visible = false;

        }

        protected void save_Click(object sender, EventArgs e)
        {
            save.Visible = false;
            Cancel.Visible = false;
            create.Visible = true;
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            save.Visible = false;
            Cancel.Visible = false;
            create.Visible = true;
            Delete.Visible = false;
            edit.Visible = false;
        }

        protected void LinkButtonListItem_Click(object sender, EventArgs e)
        {
            create.Visible = false;
            save.Visible = false;
            Cancel.Visible = true;
            edit.Visible = true;
            Delete.Visible = true;

        }

        protected void edit_Click(object sender, EventArgs e)
        {
            save.Visible = false;
            Cancel.Visible = false;
            create.Visible = true;
            Delete.Visible = false;
            edit.Visible = false;
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            save.Visible = false;
            Cancel.Visible = false;
            create.Visible = true;
            Delete.Visible = false;
            edit.Visible = false;
        }

         
    }
}