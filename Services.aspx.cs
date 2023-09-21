using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Donatebtn(object sender, EventArgs e)
    {
        

        if (HttpContext.Current.User.Identity.IsAuthenticated == false)
        {
            Response.Redirect("~/Account/Login.aspx");
        }

        Response.Redirect("~/Donations1.aspx");
    }

    protected void Volunteer_Click(object sender, EventArgs e)
    {
        
        if (HttpContext.Current.User.Identity.IsAuthenticated == false)
        {
            Response.Redirect("Account/Login.aspx");
        }
        else
        {
            Response.Redirect("~/Volunteer.aspx");
        }
    }
}