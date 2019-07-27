<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="TimeTable.aspx.cs" Inherits="Assignment.WebForm2" %>


<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">

    <h3> Searching for RouteNumber and StopID</h3>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Employee]">
    </asp:SqlDataSource>
    <div id="TextBoxCss">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxCss" ></asp:TextBox>

    <asp:Button ID="Search" runat="server" Text="Search" Class="buttonCss" />
    </div>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        CssClass="GridviewCss">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" 
                SortExpression="ID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" 
                SortExpression="Title" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="PositionEndDate" HeaderText="PositionEndDate" SortExpression="PositionEndDate" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [EmployeeSalary]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" CssClass="GridviewCss" Height="138px" 
        Width="441px" DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" 
                SortExpression="ID" ReadOnly="True" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" 
                SortExpression="Amount" />
        </Columns>
    </asp:GridView>
</asp:Content>