<%@ Page  MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Assignment.AboutUs" %>


<asp:Content ID = "Content" ContentPlaceHolderID ="MainContent" runat="server">
    <div>
        <h2>Route Database:<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Route] WHERE [RouteNumber] = @RouteNumber" 
                InsertCommand="INSERT INTO [Route] ([StopID], [RouteNumber], [StartLocation], [StopLocation], [OrderNumber]) VALUES (@StopID, @RouteNumber, @StartLocation, @StopLocation, @OrderNumber)" 
                SelectCommand="SELECT [StopID], [RouteNumber], [StartLocation], [StopLocation], [OrderNumber] FROM [Route]" 
                
                UpdateCommand="UPDATE [Route] SET [StopID] = @StopID, [StartLocation] = @StartLocation, [StopLocation] = @StopLocation, [OrderNumber] = @OrderNumber WHERE [RouteNumber] = @RouteNumber">
            <DeleteParameters>
                <asp:Parameter Name="RouteNumber" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StopID" Type="Int32" />
                <asp:Parameter Name="RouteNumber" Type="Int32" />
                <asp:Parameter Name="StartLocation" Type="String" />
                <asp:Parameter Name="StopLocation" Type="String" />
                <asp:Parameter Name="OrderNumber" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StopID" Type="Int32" />
                <asp:Parameter Name="StartLocation" Type="String" />
                <asp:Parameter Name="StopLocation" Type="String" />
                <asp:Parameter Name="OrderNumber" Type="Int32" />
                <asp:Parameter Name="RouteNumber" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="RouteNumber" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="StopID" HeaderText="StopID" 
                        SortExpression="StopID" />
                    <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" 
                        SortExpression="RouteNumber" ReadOnly="True" />
                    <asp:BoundField DataField="StartLocation" HeaderText="StartLocation" 
                        SortExpression="StartLocation" />
                    <asp:BoundField DataField="StopLocation" HeaderText="StopLocation" 
                        SortExpression="StopLocation" />
                    <asp:BoundField DataField="OrderNumber" HeaderText="OrderNumber" 
                        SortExpression="OrderNumber" />
                </Columns>
            </asp:GridView>
        </h2>
        <p>&nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Route] WHERE [RouteNumber] = @RouteNumber" 
                InsertCommand="INSERT INTO [Route] ([RouteNumber], [StartLocation], [StopLocation], [OrderNumber], [StopID]) VALUES (@RouteNumber, @StartLocation, @StopLocation, @OrderNumber, @StopID)" 
                SelectCommand="SELECT * FROM [Route]" 
                
                UpdateCommand="UPDATE [Route] SET [StartLocation] = @StartLocation, [StopLocation] = @StopLocation, [OrderNumber] = @OrderNumber, [StopID] = @StopID WHERE [RouteNumber] = @RouteNumber">
                <DeleteParameters>
                    <asp:Parameter Name="RouteNumber" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="RouteNumber" Type="Int32" />
                    <asp:Parameter Name="StartLocation" Type="String" />
                    <asp:Parameter Name="StopLocation" Type="String" />
                    <asp:Parameter Name="OrderNumber" Type="Int32" />
                    <asp:Parameter Name="StopID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StartLocation" Type="String" />
                    <asp:Parameter Name="StopLocation" Type="String" />
                    <asp:Parameter Name="OrderNumber" Type="Int32" />
                    <asp:Parameter Name="StopID" Type="Int32" />
                    <asp:Parameter Name="RouteNumber" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <h2>Add some route: </h2>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="RouteNumber" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
                Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" 
                        ReadOnly="True" SortExpression="RouteNumber" />
                    <asp:BoundField DataField="StartLocation" HeaderText="StartLocation" 
                        SortExpression="StartLocation" />
                    <asp:BoundField DataField="StopLocation" HeaderText="StopLocation" 
                        SortExpression="StopLocation" />
                    <asp:BoundField DataField="OrderNumber" HeaderText="OrderNumber" 
                        SortExpression="OrderNumber" />
                    <asp:BoundField DataField="StopID" HeaderText="StopID" 
                        SortExpression="StopID" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />

        
    </div>
 </asp:content>
