﻿<%@ Page Title="OP sends properly formatted error responses to invalid direct request messages"
	Language="C#" MasterPageFile="~/TestMaster.master" AutoEventWireup="true" CodeFile="DirectMessageErrors.aspx.cs"
	Inherits="OP_DirectMessageErrors" %>

<%@ Register Src="~/TestResultDisplay.ascx" TagPrefix="osis" TagName="TestResultDisplay" %>
<%@ Register Assembly="DotNetOpenAuth" Namespace="DotNetOpenAuth.OpenId.RelyingParty"
	TagPrefix="rp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="TestBody" runat="Server">
	<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
		<asp:View ID="View1" runat="server">
			<asp:Panel ID="Panel1" runat="server" DefaultButton="beginButton">
				<asp:Label ID="Label1" runat="server" Text="OpenID Identifier:" /> <asp:TextBox ID="identifierBox"
					runat="server" />
				<asp:Button ID="beginButton" runat="server" Text="Begin" OnClick="beginButton_Click" />
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="identifierBox"
					ErrorMessage="Enter an identifier first." Display="Dynamic" />
				<asp:Label ID="errorLabel" runat="server" EnableViewState="False" ForeColor="Red"
					Visible="False" />
			</asp:Panel>
		</asp:View>
		<asp:View ID="View2" runat="server">
			<osis:TestResultDisplay runat="server" ID="testResultDisplay" />
		</asp:View>
	</asp:MultiView>
	<h3>Instructions: </h3>
	<ol>
		<li>Enter an OpenID Identifier. </li>
	</ol>
</asp:Content>