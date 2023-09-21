<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Content\styles.css" rel="stylesheet" />
    <header class="masthead text-left text-black">
            <div class="masthead-content">
                <div class="container px-5">
                   
                    <h2 class="masthead-heading mb-0">Donate to us</h2>  
                    <h3 class="masthead-subheading mb-0">Help someone in need!</h3>
                    <asp:Button runat="server" Width="200px" class="btn btn-primary btn-xl rounded-pill mt-5"  id="book_appointment_btn" href="~/Account/Login.aspx"  Text="Donate" OnClick="book_appointment_btn_Click1"></asp:Button>
                    
                </div>
            </div>
          
        </header>
   
</asp:Content>
