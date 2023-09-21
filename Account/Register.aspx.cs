using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using DonateWeb;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity.EntityFramework;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser() { UserName = Email.Text };
        IdentityResult result = manager.Create(user, Password.Text);

        ApplicationDbContext context = new ApplicationDbContext();
        var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
        var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

       
        if (result.Succeeded)
        {
            
            SqlConnection connect = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=aspnet-DonateWeb-006510e7-5a5b-4a65-bb6a-39bb9af8d23f;AttachDbFilename=|DataDirectory|\\aspnet-DonateWeb-006510e7-5a5b-4a65-bb6a-39bb9af8d23f.mdf;Integrated Security=SSPI");

            connect.Open();
            String query1 = "INSERT INTO usersTbl VALUES('" + Name.Text.ToString() + "','" + Surname.Text.ToString() + "','" + Phone.Text.ToString() + "','" + Email.Text.ToString() + "','"
                 + Password.Text.ToString() + "')";

            SqlCommand command = new SqlCommand(query1, connect);
            command.ExecuteNonQuery();

            connect.Close();
            
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }

        if (result.Succeeded)
        {
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }

    protected void Phone_TextChanged(object sender, EventArgs e)
    {
     
    }

    bool Check_number(string input)
    {
        int number = 0;
        return int.TryParse(input, out number);
    }
}