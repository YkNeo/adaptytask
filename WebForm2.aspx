<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="covidsheild.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>/\ Covid Sheild /\</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="align-content:center">
            <asp:Button ID="Button2" runat="server" Text="View Cart" OnClick="Button2_Click" />
            <h1 style="text-align:center">Get Protected from Covid-19</h1>
            
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Sanitizer</asp:ListItem>
                <asp:ListItem>Mask</asp:ListItem>
                <asp:ListItem>PPE Kit</asp:ListItem>
                <asp:ListItem>Surface Disinfectant</asp:ListItem>
                </asp:DropDownList>
                <br /> <br />
                <asp:Image ID="Image1" runat="server" Height="500px" Width="500px"></asp:Image>
                <br /> <br />
                <asp:Label ID="prod_price" runat="server" Text=""></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="" Visible="true"></asp:Label>
                <br /> <br /> 
                <asp:Button ID="Button1" runat="server" Text="Add to cart" OnClick="Button1_Click"></asp:Button>
                <br /> <br />
                <asp:Label ID="ack" runat="server" Text="Product Added" Visible="false"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" Visible="false"></asp:GridView>
        </div>
    </form>
</body>
</html>
