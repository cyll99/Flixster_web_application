<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Flixster.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <a href="Detail.aspx">
        <asp:Image ID="pictureBox1" runat="server" /></a>
        <div>
            <asp:Label ID="lbl_title" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="label1" runat="server" Text="Label" Height="120px" Width="500px"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_precedent" runat="server"  Text="Button" />
            <br />
            <br />
            <asp:Button ID="btn_suivant" runat="server"  Text="Button" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
