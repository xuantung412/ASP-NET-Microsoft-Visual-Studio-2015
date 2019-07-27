<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey"  Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Assignment.HomePage" %>

<asp:Content ID = "content" ContentPlaceHolderID ="MainContent" runat="server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function id_newcontent_editor_onclick() {

        }

// ]]>
    </script>

    <div>
    <h2>Home</h2>
        <h3>Wellcome to Bus Service</h3>    
        <h4><asp:SqlDataSource ID="Data" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Text], [Line] FROM [HomePageData]" 
                DeleteCommand="DELETE FROM [HomePageData] WHERE [Line] = @Line" 
                InsertCommand="INSERT INTO [HomePageData] ([Text]) VALUES (@Text)" 
                UpdateCommand="UPDATE [HomePageData] SET [Text] = @Text WHERE [Line] = @Line">
            <DeleteParameters>
                <asp:Parameter Name="Line" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Text" Type="String" />
                <asp:Parameter Name="Line" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </h4>
        <p>
            <asp:GridView ID="Text0" runat="server" AutoGenerateColumns="False" 
                BorderColor="White" DataKeyNames="Line" DataSourceID="Data" 
                EmptyDataText="There is no information currently" 
            EnableViewState="False" BorderWidth="0px" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        UpdateText="Save" />
                    <asp:TemplateField SortExpression="Text">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Text") %>' 
                                Height="29px" TextMode="MultiLine" Width="204px"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Text") %>'></asp:Label>
                        </ItemTemplate>
                        <ControlStyle BorderColor="White" BorderStyle="None" />
                        <FooterStyle BorderColor="White" BorderStyle="None" />
                        <HeaderStyle BorderColor="White" BorderStyle="None" />
                        <ItemStyle BorderColor="White" BorderStyle="None" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:DetailsView ID="EditData" runat="server" AutoGenerateRows="False" 
                DataKeyNames="Line" DataSourceID="Data" DefaultMode="Insert" Height="50px" 
                Width="125px">
                <Fields>
                    <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                    <asp:BoundField DataField="Line" HeaderText="Line" InsertVisible="False" 
                        ReadOnly="True" SortExpression="Line" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <img alt="" src="../Image/picture1.jpg" style="width: 300px; height: 200px" /><img 
                alt="" src="../Image/images.jpg" style="width: 276px; height: 183px" /></p>
    </div>
    &nbsp;&nbsp;<p>
        &nbsp;</p>
    <p>
            &nbsp;</p>
</asp:Content>
    


