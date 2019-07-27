<%@ Page  MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Assignment.AboutUs" %>

<asp:Content ContentPlaceHolderID="MainContent" runat = "server">


        <h2>Bus Database:<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Bus] WHERE [RegisNumber] = @RegisNumber" 
                InsertCommand="INSERT INTO [Bus] ([RegisNumber], [SeatNumber]) VALUES (@RegisNumber, @SeatNumber)" 
                SelectCommand="SELECT * FROM [Bus]" 
                UpdateCommand="UPDATE [Bus] SET [SeatNumber] = @SeatNumber WHERE [RegisNumber] = @RegisNumber">
            <DeleteParameters>
                <asp:Parameter Name="RegisNumber" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RegisNumber" Type="Int32" />
                <asp:Parameter Name="SeatNumber" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SeatNumber" Type="Int32" />
                <asp:Parameter Name="RegisNumber" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="RegisNumber" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="RegisNumber" HeaderText="Register Number" 
                        ReadOnly="True" SortExpression="RegisNumber" />
                    <asp:BoundField DataField="SeatNumber" HeaderText="Number of Seats" 
                        SortExpression="SeatNumber" />
                </Columns>
            </asp:GridView>
        </h2>
        <p>&nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Bus] WHERE [RegisNumber] = @RegisNumber" 
                InsertCommand="INSERT INTO [Bus] ([RegisNumber], [SeatNumber]) VALUES (@RegisNumber, @SeatNumber)" 
                SelectCommand="SELECT * FROM [Bus]" 
                UpdateCommand="UPDATE [Bus] SET [SeatNumber] = @SeatNumber WHERE [RegisNumber] = @RegisNumber">
                <DeleteParameters>
                    <asp:Parameter Name="RegisNumber" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="RegisNumber" Type="Int32" />
                    <asp:Parameter Name="SeatNumber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SeatNumber" Type="Int32" />
                    <asp:Parameter Name="RegisNumber" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <h2>
        <h2>Add some busses: </h2>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                DataKeyNames="RegisNumber" DataSourceID="SqlDataSource2" DefaultMode="Insert" 
                Height="50px" Width="125px">
                <Fields>
                    <asp:TemplateField HeaderText="RegisterNumber" SortExpression="RegisNumber">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RegisNumber") %>'></asp:Label>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("RegisNumber") %>'></asp:TextBox>
                        </InsertItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SeatNumber" SortExpression="SeatNumber">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SeatNumber") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("SeatNumber") %>'></asp:TextBox>
                        </InsertItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField NewText="Add Some Busses" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <br />

        </h2>

 </asp:content>