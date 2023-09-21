<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Volunteer.aspx.cs" Inherits="Volunteer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Join us in helping people</h1>
    <div style="position:center">
        <asp:Label runat="server" Text="Name     :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="Name" Width="127px" ></asp:TextBox>
        <br />
        <asp:Label runat="server" Text="LastName :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="LastNametxt" Width="127px" ></asp:TextBox>
        <br />

        <asp:Label runat="server" Text="Email :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="EmailTxtBx" Width="127px" ></asp:TextBox>
        <br />
        <asp:Label runat="server" Text="Postal Address :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="PostalAddrTxBx" Width="127px" ></asp:TextBox>
        <br />
        <asp:Label runat="server" Text="Postal Code :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="postCode" Width="127px" ></asp:TextBox>
        <br />
        <asp:Label runat="server" Text="Phone Number :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="phoneNumber" Width="127px" ></asp:TextBox>
        <br />
        <asp:Label runat="server" Text="Work Phone :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="WorkPhone" Width="127px" ></asp:TextBox>
        <br />
        <asp:Label runat="server" Text="Home Tel :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox runat="server" ID="HomeTel" Width="127px" ></asp:TextBox>
        <br />
        <br />

        <h3>Volunteering for us</h3>
        <br />
        <p><strong>if you know what role or type of volunteering you would like to do,
            kindly give us details.
           </strong>
            
            <br />
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="48px" TextMode="MultiLine" Width="516px"></asp:TextBox>
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Proceed" Width="108px" OnClick="Button1_Click" />
        </p>

    </div>

</asp:Content>

