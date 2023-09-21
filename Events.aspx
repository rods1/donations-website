<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
    <table>
        <tr>
            <td>
                <br />
             
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                    <AlternatingItemTemplate>
                        <li style="background-color: #FFF8DC;">evenName:
                            <asp:Label ID="evenNameLabel" runat="server" Text='<%# Eval("evenName") %>' />
                            <br />
                            EventDescription:
                            <asp:Label ID="EventDescriptionLabel" runat="server" Text='<%# Eval("EventDescription") %>' />
                            <br />
                            EventTime:
                            <asp:Label ID="EventTimeLabel" runat="server" Text='<%# Eval("EventTime") %>' />
                            <br />
                            EventDate:
                            <asp:Label ID="EventDateLabel" runat="server" Text='<%# Eval("EventDate") %>' />
                            <br />
                            EventLocation:
                            <asp:Label ID="EventLocationLabel" runat="server" Text='<%# Eval("EventLocation") %>' />
                            <br />
                            EventType:
                            <asp:Label ID="EventTypeLabel" runat="server" Text='<%# Eval("EventType") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="background-color: #008A8C;color: #FFFFFF;">evenName:
                            <asp:TextBox ID="evenNameTextBox" runat="server" Text='<%# Bind("evenName") %>' />
                            <br />
                            EventDescription:
                            <asp:TextBox ID="EventDescriptionTextBox" runat="server" Text='<%# Bind("EventDescription") %>' />
                            <br />
                            EventTime:
                            <asp:TextBox ID="EventTimeTextBox" runat="server" Text='<%# Bind("EventTime") %>' />
                            <br />
                            EventDate:
                            <asp:TextBox ID="EventDateTextBox" runat="server" Text='<%# Bind("EventDate") %>' />
                            <br />
                            EventLocation:
                            <asp:TextBox ID="EventLocationTextBox" runat="server" Text='<%# Bind("EventLocation") %>' />
                            <br />
                            EventType:
                            <asp:TextBox ID="EventTypeTextBox" runat="server" Text='<%# Bind("EventType") %>' />
                            <br />
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">evenName:
                            <asp:TextBox ID="evenNameTextBox" runat="server" Text='<%# Bind("evenName") %>' />
                            <br />EventDescription:
                            <asp:TextBox ID="EventDescriptionTextBox" runat="server" Text='<%# Bind("EventDescription") %>' />
                            <br />EventTime:
                            <asp:TextBox ID="EventTimeTextBox" runat="server" Text='<%# Bind("EventTime") %>' />
                            <br />EventDate:
                            <asp:TextBox ID="EventDateTextBox" runat="server" Text='<%# Bind("EventDate") %>' />
                            <br />EventLocation:
                            <asp:TextBox ID="EventLocationTextBox" runat="server" Text='<%# Bind("EventLocation") %>' />
                            <br />
                            EventType:
                            <asp:TextBox ID="EventTypeTextBox" runat="server" Text='<%# Bind("EventType") %>' />
                            <br />
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
<br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="background-color: #DCDCDC;color: #000000;">evenName:
                            <asp:Label ID="evenNameLabel" runat="server" Text='<%# Eval("evenName") %>' />
                            <br />
                            EventDescription:
                            <asp:Label ID="EventDescriptionLabel" runat="server" Text='<%# Eval("EventDescription") %>' />
                            <br />
                            EventTime:
                            <asp:Label ID="EventTimeLabel" runat="server" Text='<%# Eval("EventTime") %>' />
                            <br />
                            EventDate:
                            <asp:Label ID="EventDateLabel" runat="server" Text='<%# Eval("EventDate") %>' />
                            <br />
                            EventLocation:
                            <asp:Label ID="EventLocationLabel" runat="server" Text='<%# Eval("EventLocation") %>' />
                            <br />
                            EventType:
                            <asp:Label ID="EventTypeLabel" runat="server" Text='<%# Eval("EventType") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">evenName:
                            <asp:Label ID="evenNameLabel" runat="server" Text='<%# Eval("evenName") %>' />
                            <br />
                            EventDescription:
                            <asp:Label ID="EventDescriptionLabel" runat="server" Text='<%# Eval("EventDescription") %>' />
                            <br />
                            EventTime:
                            <asp:Label ID="EventTimeLabel" runat="server" Text='<%# Eval("EventTime") %>' />
                            <br />
                            EventDate:
                            <asp:Label ID="EventDateLabel" runat="server" Text='<%# Eval("EventDate") %>' />
                            <br />
                            EventLocation:
                            <asp:Label ID="EventLocationLabel" runat="server" Text='<%# Eval("EventLocation") %>' />
                            <br />
                            EventType:
                            <asp:Label ID="EventTypeLabel" runat="server" Text='<%# Eval("EventType") %>' />
                            <br />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [evenName], [EventDescription], [EventTime], [EventDate], [EventLocation], [EventType] FROM [EventsTable]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </div>
</asp:Content>

