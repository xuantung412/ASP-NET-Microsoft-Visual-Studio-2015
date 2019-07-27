<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="DriverTimetable.aspx.cs" Inherits="Assignment.WebForm1" %>




<asp:Content ID ="content" ContentPlaceHolderID="MainContent" runat="server">
 
    
    <h3> Timetable for Driver</h3>
    <p> 
        <asp:SqlDataSource ID="Driver" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Driver_ID], [RouteNumber], [RegisNumber], [StartTime], [StopTime] FROM [Service] ORDER BY [Driver_ID]">
        </asp:SqlDataSource>
    </p>
    <p> 
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Driver_ID,RouteNumber,RegisNumber" DataSourceID="Driver" 
            CssClass="GridviewCss" Font-Names=".VnAvant" Height="173px" Width="784px">
            <Columns>
                <asp:BoundField DataField="Driver_ID" HeaderText="Driver_ID" ReadOnly="True" 
                    SortExpression="Driver_ID" />
                <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" 
                    ReadOnly="True" SortExpression="RouteNumber" />
                <asp:BoundField DataField="RegisNumber" HeaderText="RegisNumber" 
                    ReadOnly="True" SortExpression="RegisNumber" />
                <asp:BoundField DataField="StartTime" HeaderText="StartTime" 
                    SortExpression="StartTime" />
                <asp:BoundField DataField="StopTime" HeaderText="StopTime" 
                    SortExpression="StopTime" />
            </Columns>
        </asp:GridView>
    </p>
    <h3> Searching for Driver</h3>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxCss"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" 
        CssClass="buttonCss" />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="RouteNumber,RegisNumber,Driver_ID" 
        DataSourceID="SqlDataSource2" CssClass="GridviewCss">
        <Columns>
            <asp:BoundField DataField="Driver_ID" HeaderText="Driver_ID" 
                ReadOnly="True" SortExpression="Driver_ID" />
            <asp:BoundField DataField="RouteNumber" HeaderText="RouteNumber" ReadOnly="True" 
                SortExpression="RouteNumber" />
            <asp:BoundField DataField="RegisNumber" HeaderText="RegisNumber" 
                SortExpression="RegisNumber" ReadOnly="True" />
            <asp:BoundField DataField="StartTime" HeaderText="StartTime" 
                SortExpression="StartTime" />
            <asp:BoundField DataField="StopTime" HeaderText="StopTime" 
                SortExpression="StopTime" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [RouteNumber], [RegisNumber], [Driver_ID], [StartTime], [StopTime] FROM [Service] WHERE ([Driver_ID] = @Driver_ID) ORDER BY [Driver_ID]">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Driver_ID" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:content>
