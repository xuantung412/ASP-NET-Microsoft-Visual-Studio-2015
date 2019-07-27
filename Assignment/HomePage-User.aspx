<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="HomePage-User.aspx.cs" Inherits="Assignment.HomePage_User" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 298px;
            height: 209px;
        }
        .style2
        {
            width: 300px;
            height: 200px;
            margin-right: 10px;
            margin-top: 0px;
        }
    </style>


    <div>
    <h2>Home<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [HomePageData]"></asp:SqlDataSource>
        </h2>
        <h3>Wellcome to Bus Service</h3>    
        <p>
            <asp:GridView ID="Text" runat="server" AutoGenerateColumns="False" 
                BorderColor="White" DataKeyNames="Line" DataSourceID="SqlDataSource1" 
                BorderStyle="None" CssClass="HomePageCss">
                <Columns>
                    <asp:BoundField DataField="Text" SortExpression="Text" >
                    <ControlStyle BorderColor="White" BorderStyle="None" />
                    <FooterStyle BorderColor="White" BorderStyle="None" />
                    <HeaderStyle BorderColor="White" BorderStyle="None" />
                    <ItemStyle BorderColor="White" BorderStyle="None" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
            <br />
        </p>
    </div>
    <img alt="BusPicture" class="PictureCss" longdesc="Modern Bus, Best Price" 
        src="Image/images.jpg" /><img alt="BusPicture" class="PictureCss" 
        longdesc="ModernBus" src="Image/picture1.jpg" /><p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
