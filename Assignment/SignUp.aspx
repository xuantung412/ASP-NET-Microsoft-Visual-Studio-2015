<%@ Page MasterPageFile="~/BusMasterPage.Master" Title="Plan your journey" Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Assignment.SignUp" %>

<asp:Content ID ="Content" ContentPlaceHolderID="MainContent" runat="server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function File1_onclick() {

        }

// ]]>
    </script>
    
    <div>
    <h2>Create Your Account</h2>
    </div>
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
        ContinueDestinationPageUrl="~/SignIn.aspx" 
        oncreateduser="CreateUserWizard1_CreatedUser" Height="274px" 
    Width="417px" CssClass="GridviewCss" Font-Bold="True" Font-Italic="True">
        <TextBoxStyle Font-Bold="True" BackColor="#FFFF66" />
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
        <HeaderStyle Font-Bold="False" Font-Italic="False" />
    </asp:CreateUserWizard>
</asp:Content>
