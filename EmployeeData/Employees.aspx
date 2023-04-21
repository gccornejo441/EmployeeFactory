<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmployeeData.Employees" %>

<%@ Register Assembly="DevExpress.Web.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Xpo" Assembly="DevExpress.Xpo.v22.2, Version=22.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employees</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="ltConnectionMsg" runat="server"></asp:Literal>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
          <div>
      TextBox
      <asp:TextBox ID="TextBox1" ValidationGroup="Group1" runat="server"></asp:TextBox>
      <asp:RequiredFieldValidator Display="Static" ID="TextBoxValidator1" ValidationGroup="Group1" runat="server" ControlToValidate="TextBox1" ErrorMessage="(please enter some text)" EnableClientScript="False"></asp:RequiredFieldValidator>
      <br />
      CheckBox
      <asp:CheckBox ID="CheckBox1" ValidationGroup="Group2" runat="server" />
      <asp:CustomValidator ID="CustomValidator" ValidationGroup="Group2" runat="server" Text="(this option required)" OnServerValidate="CustomValidator_ServerValidate" EnableClientScript="False"></asp:CustomValidator>
      <br />
      <asp:Button ID="Button1" ValidationGroup="Group1" CausesValidation="false" runat="server" Text="Validate Group1 Controls" OnClick="Button_Click" />
      <asp:Label ID="Label1" runat="server"></asp:Label>
      <br />
      <asp:Button ID="Button2" ValidationGroup="Group2" CausesValidation="false" runat="server" Text="Validate Group2 Controls" OnClick="Button_Click" />
      <asp:Label ID="Label2" runat="server"></asp:Label>
      <br />
      <br />
      AutoPostBack TextBox
      <asp:TextBox AutoPostBack="true" ID="TextBox2" ValidationGroup="Group3" runat="server" CausesValidation="true"></asp:TextBox>
      <asp:RequiredFieldValidator ID="TextBoxValidator2" ValidationGroup="Group3" runat="server" ControlToValidate="TextBox2" ErrorMessage="(please enter some text)" EnableClientScript="False"></asp:RequiredFieldValidator>
      <asp:Label ID="Label3" runat="server"></asp:Label>
      <br />
      <br />
      <asp:Button ID="Button3" CausesValidation="true" runat="server" Text="Validate All Controls" OnClick="Button3_Click" />
      <asp:Label ID="Label4" runat="server"></asp:Label>
              <asp:Label ID="Label5" runat="server"></asp:Label>
              <asp:Button ID="Button4" OnClick="Button4_Click" Text="TestEvent" runat="server"/>
    </div>
    </form>
</body>
</html>
