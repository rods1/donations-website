using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Volunteer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connect = new SqlConnection("Data Source=(LocalDb)\\MSSQLLocalDB;Initial Catalog=aspnet-DonateWeb-006510e7-5a5b-4a65-bb6a-39bb9af8d23f;AttachDbFilename=|DataDirectory|\\aspnet-DonateWeb-006510e7-5a5b-4a65-bb6a-39bb9af8d23f.mdf;Integrated Security=SSPI");

        connect.Open();

        try {
            String query1 = "INSERT INTO usersTbl VALUES('" + Name.Text.ToString() + "','" + LastNametxt.Text.ToString() + "','" + PostalAddrTxBx.Text.ToString() + "','" + postCode.Text.ToString() + "','"
                 + phoneNumber.Text.ToString() + "','" + WorkPhone.Text.ToString() + "','" + HomeTel.Text.ToString() + "','" + TextBox1.Text.ToString() + "')";

            SqlCommand command = new SqlCommand(query1, connect);
            command.ExecuteNonQuery();
        }catch(Exception )
        {

        }

       
        

        connect.Close();
    }
}