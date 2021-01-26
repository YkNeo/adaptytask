<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="covidsheild.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>My Cart</h1>
            <asp:Label ID="Label1" runat="server" Text="Order Summary"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Enter Address:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="100px"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Place Order" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
