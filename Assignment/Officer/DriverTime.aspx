<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="DriverTime.aspx.cs" Inherits="Assignment.Driver.WebForm1" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Time for Service</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Service] WHERE [RouteNumber] = @RouteNumber AND [Driver_ID] = @Driver_ID AND [RegisNumber] = @RegisNumber" 
        InsertCommand="INSERT INTO [Service] ([RouteNumber], [Driver_ID], [Officer_ID], [RegisNumber], [StartTime], [StopTime]) VALUES (@RouteNumber, @Driver_ID, @Officer_ID, @RegisNumber, @StartTime, @StopTime)" 
        SelectCommand="SELECT * FROM [Service] ORDER BY [Driver_ID]" 
        UpdateCommand="UPDATE [Service] SET [Officer_ID] = @Officer_ID, [StartTime] = @StartTime, [StopTime] = @StopTime WHERE [RouteNumber] = @RouteNumber AND [Driver_ID] = @Driver_ID AND [RegisNumber] = @RegisNumber">
        <DeleteParameters>
            <asp:Parameter Name="RouteNumber" Type="Int32" />
            <asp:Parameter Name="Driver_ID" Type="Int32" />
            <asp:Parameter Name="RegisNumber" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="RouteNumber" Type="Int32" />
            <asp:Parameter Name="Driver_ID" Type="Int32" />
            <asp:Parameter Name="Officer_ID" Type="Int32" />
            <asp:Parameter Name="RegisNumber" Type="Int32" />
            <asp:Parameter DbType="Time" Name="StartTime" />
            <asp:Parameter DbType="Time" Name="StopTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Officer_ID" Type="Int32" />
            <asp:Parameter DbType="Time" Name="StartTime" />
            <asp:Parameter DbType="Time" Name="StopTime" />
            <asp:Parameter Name="RouteNumber" Type="Int32" />
            <asp:Parameter Name="Driver_ID" Type="Int32" />
            <asp:Parameter Name="RegisNumber" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RouteNumber,Driver_ID,RegisNumber" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data to record" EnableViewState="False" 
        onrowdeleted="GridView1_RowDeleted" onrowupdated="GridView1_RowUpdated" 
        CssClass="GridviewCss" Font-Names=".VnAvant" Font-Underline="False" 
        Height="149px" Width="726px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" 
                ReadOnly="True" SortExpression="RouteNumber" />
            <asp:BoundField DataField="Driver_ID" HeaderText="Driver_ID" ReadOnly="True" 
                SortExpression="Driver_ID" />
            <asp:BoundField DataField="Officer_ID" HeaderText="Officer_ID" 
                SortExpression="Officer_ID" />
            <asp:BoundField DataField="RegisNumber" HeaderText="RegisNumber" 
                ReadOnly="True" SortExpression="RegisNumber" />
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" 
                SortExpression="StartTime" />
            <asp:BoundField DataField="StopTime" HeaderText="StopTime" 
                SortExpression="StopTime" />
        </Columns>
    </asp:GridView>
    <h2> Add new time for Service</h2>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="RouteNumber,Driver_ID,RegisNumber" DataSourceID="SqlDataSource1" 
        DefaultMode="Insert" EnableViewState="False" Height="72px" Width="144px" 
        oniteminserted="DetailsView1_ItemInserted" CssClass="GridviewCss" 
        HorizontalAlign="Justify">
        <Fields>
            <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" 
                ReadOnly="True" SortExpression="RouteNumber" />
            <asp:BoundField DataField="Driver_ID" HeaderText="Driver_ID" ReadOnly="True" 
                SortExpression="Driver_ID" />
            <asp:BoundField DataField="Officer_ID" HeaderText="Officer_ID" 
                SortExpression="Officer_ID" />
            <asp:BoundField DataField="RegisNumber" HeaderText="RegisNumber" 
                ReadOnly="True" SortExpression="RegisNumber" />
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" 
                SortExpression="StartTime" />
            <asp:BoundField DataField="StopTime" HeaderText="StopTime" 
                SortExpression="StopTime" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <HeaderStyle Font-Bold="False" />
    </asp:DetailsView>
    <asp:Label ID="LPageMsg" runat="server"></asp:Label>
</asp:Content>