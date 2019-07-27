<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey"  Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Assignment.SignIn" %>


<asp:Content ID ="Content" ContentPlaceHolderID="MainContent" runat="server">
    <h3 align="center">Please enter your account and password.</h3>
    <div id ="LogInBox">
        <asp:Login ID="Login1" runat="server" DisplayRememberMe="False" UserNameLabelText="Account:" 
            FailureText="Invalid! Please try again!" 
            DestinationPageUrl="~/HomePage-User.aspx" BorderStyle="Solid" 
            CssClass="LoginBoxCss" Width="346px" BackColor="#CCFF99" 
            BorderColor="#9933FF" BorderWidth="5px" Height="149px" 
            TitleText="Login " >
            <LabelStyle BackColor="#CCFF99" BorderColor="#9900CC" BorderStyle="None" 
                Font-Bold="False" Font-Overline="False" ForeColor="Black" />
            <LoginButtonStyle Font-Bold="True" />
            <TextBoxStyle Font-Bold="True" />
            <TitleTextStyle Font-Bold="True" Font-Italic="True" Font-Names=".VnAvant" 
                Font-Size="Larger" />
        </asp:Login>
    </div></asp:Content>
