<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <link href="Content\styles.css" rel="stylesheet" /> 
        <header class="masthead text-center text-white">
            <div class="masthead-content">
                <div class="container px-5">
                    <h1 class="masthead-heading mb-0">Our Donation</h1>
                    <h2 class="masthead-subheading mb-0">You can donate anything.</h2>
                    <asp:Button runat="server" Width="200px" class="btn btn-primary btn-xl rounded-pill mt-5" id="Donate_service" Text="Donate"  OnClick="Donatebtn"/>
                </div>
            </div>
            
        </header>
      
     <!-- Content section 1-->
        <section id="scroll">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5"></div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">What you don&#39;t use or wear maybe useful.</h2>
                            <p>What we do we your prescious items is to give them to people in need, in both summer and winter, we set up spots to help people who are homeless and those who have little to no financial means<br /> </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 2-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="funwalk%202019%20(1).jpg" alt="img" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <img class="img-fluid rounded-circle" src="funwalk%202019%20(2).jpg" alt="img" />
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <h2 class="display-4">You Donate Financially!</h2>
                            <p>You can donate from as little as you can, thus you can call us and findout where or what you donation was spent on.<br /> </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 3-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="bbq%20out.jpg" dir="auto" style="width: 375px; height: 314px" /></div>
                    </div>
                    </div>

                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4">
                    <asp:Button runat="server" Width="200px" class="btn btn-primary btn-xl rounded-pill mt-5" id="Volunteer" Text="Volunteer" OnClick="Volunteer_Click"  />
                            </h2>
                            <p>A helping hand uplifts.</p>
                        </div>
                    </div>
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="p-5"><img class="img-fluid rounded-circle" src="bbq%20out%20(4).jpg" alt="img" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                    </div>
                </div>
            </div>
    <h3>&nbsp;</h3>
</section>
</asp:Content>

