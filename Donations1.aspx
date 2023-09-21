<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Donations1.aspx.cs" Inherits="Donations1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
         <h2>Make Donation</h2>

    <table style="width: 100%">
        <tr>
            <td style="width: 426px; height: 189px;">
                <p>&nbsp;Type of donation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     :&nbsp;&nbsp;&nbsp;&nbsp; </p>
         <asp:Panel ID="Panel1" runat="server" Height="71px" Width="258px">
             <asp:RadioButton ID="MoneyDonor" Text ="Money" runat="server" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
             <asp:RadioButton ID="ClothesDonor" Text="Clothing" runat="server" />
         </asp:Panel>
    <br />

         <p>Amount : <asp:TextBox ID="Amount" runat="server"  Width="114px" ReadOnly="true"  Enabled="False"></asp:TextBox>&nbsp;&nbsp;&nbsp;
             <asp:Label ID="EnterAmntLbl" runat="server" Text="Enter Amount Here" Visible="False"></asp:Label>
         </p>
         <br />
            </td>

            <td style="height: 189px">
                <strong>Bank details : 
            </strong>
                <br />
                Card no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
                <asp:TextBox ID="CardNoTxt" runat="server" Width="145px"></asp:TextBox>
                <br />
                Valid Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; <asp:TextBox ID="CardDateTxt" runat="server" Width="79px"></asp:TextBox>
                <br />
                CVV/CC No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="CvvTxtbx" runat="server" Height="19px" Width="61px"></asp:TextBox>
                <br />
                Bank&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="CardholderTxt" runat="server" Width="106px"></asp:TextBox>
                <br />
                &nbsp;<asp:TextBox runat="server" ID="AccountHolder"></asp:TextBox></td>
        </tr>

        <tr>
            <td style="width: 426px">
                <asp:Button ID="DonateMoneyBtn" runat="server" Text="Donate" Width="108px" OnClick="DonateMoneyBtn_Click" />
            </td>

            <td>
                &nbsp;</td>
        </tr>

    </table>
         
         <strong>Clothes</strong><br />
            <table style="width: 100%">
                <tr>
                    <td style="width: 416px; height: 302px;">
                        <asp:Label ID="Label1" Enabled="true" runat="server" Text="Please make data is selected"></asp:Label>
                        
                        <br />
                          
                    <asp:Calendar ID="Calender2" runat="server"  BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                        <br />
                        <asp:RadioButton ID="SelfDelivRB" runat="server" Text="Self Delivery" />
                        <br />
                        <asp:RadioButton ID="CollectionRB" runat="server" Text="To be Collected" />
                        <br />
                    </td>
                    <td style="height: 302px"> 
                        Address : <asp:TextBox ID="AddressTextBox"  Text="" ReadOnly="true" runat ="server" Height="32px" Width="247px"></asp:TextBox>
                        <br />
                        <br />
                        Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp; <asp:TextBox ID="AddressCodeTxBx" runat="server" Width="85px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 416px">
                        Date :
                          <asp:Label runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                
                <tr>
                   <td style="width: 416px">
                       <asp:Button ID="ConfirmBtn" Text="Confirm"  runat="server" Enabled="true" Height="47px" Width="206px" OnClick="ConfirmBtn_Click" />
                   </td>
                </tr>

            </table>
         <br />
    
         <br />
        
     <h3 style="width:100%;">Previous Donations</h3>
<p style="width:100%;">&nbsp;</p>
<p style="width:100%;">
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</p>
    <table>
        <tr>
            <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="DeliverCollect" HeaderText="DeliverCollect" SortExpression="DeliverCollect" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DonationsMoneyTbl.Email, DonationsMoneyTbl.Name, DonationsMoneyTbl.Amount, DonationsMoneyTbl.Phone, DonationsClothesTbl.DeliverCollect, DonationsClothesTbl.Date, usersTbl.Firstname, usersTbl.Lastname FROM DonationsMoneyTbl INNER JOIN DonationsClothesTbl ON DonationsMoneyTbl.Email = DonationsClothesTbl.Email INNER JOIN usersTbl ON DonationsMoneyTbl.Email = usersTbl.Email WHERE (usersTbl.Email = @Label2)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="Label2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
           <strong>Monetary Donations&nbsp;&nbsp; </strong>
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                        <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="CardValidDate" HeaderText="CardValidDate" SortExpression="CardValidDate" />
                        <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                        <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT usersTbl.Firstname, usersTbl.Lastname, DonationsMoneyTbl.Email, DonationsMoneyTbl.Amount, DonationsMoneyTbl.CardValidDate, DonationsMoneyTbl.BankName, usersTbl.Email AS Expr1 FROM DonationsMoneyTbl INNER JOIN usersTbl ON DonationsMoneyTbl.Email = usersTbl.Email WHERE (usersTbl.Email = @Label2)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label2" Name="Label2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <br />
            </tr>
    </table>
    
             
       
</asp:Content>

