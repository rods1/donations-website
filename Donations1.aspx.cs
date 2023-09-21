using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Donations1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = User.Identity.Name.ToString();
    }

    protected void ConfirmBtn_Click(object sender, EventArgs e)
    {

    }

    protected void DonateMoneyBtn_Click(object sender, EventArgs e)
    {

    }
}