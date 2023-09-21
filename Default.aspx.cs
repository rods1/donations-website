using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void book_appointment_btn_Click(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated == true)
        {
            if (HttpContext.Current.User.IsInRole("Admin"))
            {
                Response.Redirect("Admin/Admin1.aspx");
            }


            Response.Redirect("Booking.aspx");
        }

        if (HttpContext.Current.User.Identity.IsAuthenticated == false)
        {
            Response.Redirect("Account/Login.aspx");
        }
    }

    protected void book_appointment_btn_Click1(object sender, EventArgs e)
    {
        if (HttpContext.Current.User.Identity.IsAuthenticated == true)
        {
            
            Response.Redirect("~/Donations1.aspx");
        }

        if (HttpContext.Current.User.Identity.IsAuthenticated == false)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }

}