<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Assignment.UserProfile" %>

<asp:Content ID ="Content" ContentPlaceHolderID="MainContent" runat="server">


    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Employee] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [Employee] ([Title], [Name], [Address], [Telephone], [State]) VALUES (@Title, @Name, @Address, @Telephone, @State)" 
            SelectCommand="SELECT [ID], [Title], [Name], [Address], [Telephone], [State] FROM [Employee] WHERE ([ID] = @ID)" 
            UpdateCommand="UPDATE [Employee] SET [Title] = @Title, [Name] = @Name, [Address] = @Address, [Telephone] = @Telephone, [State] = @State WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Telephone" Type="Int32" />
                <asp:Parameter Name="State" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="UserIDEnter" Name="ID" PropertyName="Text" 
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Telephone" Type="Int32" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Enter Your ID: "></asp:Label>
    <asp:TextBox ID="UserIDEnter" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Take My Profile" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" 
                SortExpression="Telephone" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [UserImage] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [UserImage] ([ID], [ImageProfile]) VALUES (@ID, @ImageProfile)" 
        onupdating="SqlDataSoure2_InsertingUpdate" 
        SelectCommand="SELECT * FROM [UserImage] WHERE ([ID] = @ID)" 
        UpdateCommand="UPDATE [UserImage] SET [ImageProfile] = @ImageProfile WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="ImageProfile" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="UserIDEnter" Name="ID" PropertyName="Text" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ImageProfile" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <asp:Image ID="IProduct" runat="server" AlternateText="No Picture" 
                                ImageUrl='<%# Eval("ImageProfile") %>' />
                        </ItemTemplate>
                    </asp:Repeater>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>


    <br />
    <asp:FileUpload ID="FUImage" runat="server" 
                        style="margin-bottom: 16px; margin-top: 0px;" />
    <br />


    <br />
    <asp:Label ID="LPageMsg" runat="server"></asp:Label>
    <br />
    <p>
        &nbsp;</p>
 
</asp:content>