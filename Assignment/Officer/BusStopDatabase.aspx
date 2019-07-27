<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Assignment.AboutUs" %>

<asp:Content ID ="Content" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2>BusStop Database:<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [BusStop] WHERE [StopID] = @StopID" 
                InsertCommand="INSERT INTO [BusStop] ([StopID], [RouteNumber]) VALUES (@StopID, @RouteNumber)" 
                SelectCommand="SELECT B.StopID, B.RouteNumber, A.StopID AS Expr1, A.StreetName, A.SubName, A.Postcode, A.StreetNum FROM BusStop AS B INNER JOIN Address AS A ON B.StopID = A.StopID" 
                
                
                UpdateCommand="UPDATE [BusStop] SET [RouteNumber] = @RouteNumber WHERE [StopID] = @StopID">
            <DeleteParameters>
                <asp:Parameter Name="StopID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StopID" Type="Int32" />
                <asp:Parameter Name="RouteNumber" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RouteNumber" Type="Int32" />
                <asp:Parameter Name="StopID" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="StopID,Expr1" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StopID" HeaderText="StopID" 
                        SortExpression="StopID" ReadOnly="True" />
                    <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" 
                        SortExpression="RouteNumber" />
                    <asp:BoundField DataField="StreetName" HeaderText="StreetName" 
                        SortExpression="StreetName" />
                    <asp:BoundField DataField="SubName" HeaderText="SubName" 
                        SortExpression="SubName" />
                    <asp:BoundField DataField="Postcode" HeaderText="Postcode" 
                        SortExpression="Postcode" />
                    <asp:BoundField DataField="StreetNum" HeaderText="StreetNum" 
                        SortExpression="StreetNum" />
                </Columns>
            </asp:GridView>
        </h2>
        <p>&nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [BusStop] WHERE [StopID] = @StopID" 
                InsertCommand="INSERT INTO [BusStop] ([StopID], [RouteNumber]) VALUES (@StopID, @RouteNumber)" 
                SelectCommand="SELECT * FROM [BusStop]" 
                
                
                UpdateCommand="UPDATE [BusStop] SET [RouteNumber] = @RouteNumber WHERE [StopID] = @StopID">
                <DeleteParameters>
                    <asp:Parameter Name="StopID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StopID" Type="Int32" />
                    <asp:Parameter Name="RouteNumber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RouteNumber" Type="Int32" />
                    <asp:Parameter Name="StopID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Address] WHERE [StopID] = @StopID" 
                InsertCommand="INSERT INTO [Address] ([StopID], [StreetName], [SubName], [Postcode], [StreetNum]) VALUES (@StopID, @StreetName, @SubName, @Postcode, @StreetNum)" 
                SelectCommand="SELECT * FROM [Address]" 
                UpdateCommand="UPDATE [Address] SET [StreetName] = @StreetName, [SubName] = @SubName, [Postcode] = @Postcode, [StreetNum] = @StreetNum WHERE [StopID] = @StopID">
                <DeleteParameters>
                    <asp:Parameter Name="StopID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StopID" Type="Int32" />
                    <asp:Parameter Name="StreetName" Type="String" />
                    <asp:Parameter Name="SubName" Type="String" />
                    <asp:Parameter Name="Postcode" Type="Int32" />
                    <asp:Parameter Name="StreetNum" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StreetName" Type="String" />
                    <asp:Parameter Name="SubName" Type="String" />
                    <asp:Parameter Name="Postcode" Type="Int32" />
                    <asp:Parameter Name="StreetNum" Type="Int32" />
                    <asp:Parameter Name="StopID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <h2>Add some route: </h2>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="StopID" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
                Height="74px" Width="125px" style="margin-bottom: 41px">
                <Fields>
                    <asp:BoundField DataField="StopID" HeaderText="StopID" ReadOnly="True" 
                        SortExpression="StopID" />
                    <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" 
                        SortExpression="RouteNumber" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
            DataKeyNames="StopID" DataSourceID="SqlDataSource3" DefaultMode="Insert" 
            Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="StopID" HeaderText="StopID" ReadOnly="True" 
                        SortExpression="StopID" />
                    <asp:BoundField DataField="StreetName" HeaderText="StreetName" 
                        SortExpression="StreetName" />
                    <asp:BoundField DataField="SubName" HeaderText="SubName" 
                        SortExpression="SubName" />
                    <asp:BoundField DataField="Postcode" HeaderText="Postcode" 
                        SortExpression="Postcode" />
                    <asp:BoundField DataField="StreetNum" HeaderText="StreetNum" 
                        SortExpression="StreetNum" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
        </asp:DetailsView>
            <br />

        </h2>
    </div>
</asp:content>
