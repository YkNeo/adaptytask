<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="covidsheild.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm1.aspx">Logout</asp:HyperLink>
            <h1>Stock Check</h1>
            <asp:Label ID="Label1" runat="server" Text="Sanitizer"></asp:Label>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/products/Sanitizer.jpg" Height="200" Width="200" />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mask"></asp:Label>
            <asp:Image ID="Image2" runat="server" ImageUrl="~/products/Mask.jpg" Height="200" Width="200" />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="PPE Kit"></asp:Label>
            <asp:Image ID="Image3" runat="server" ImageUrl="~/products/PPE Kit.jpg" Height="200" Width="200" />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label>
            <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Surface Disinfectant"></asp:Label>
            <asp:Image ID="Image4" runat="server" ImageUrl="~/products/Surface Disinfectant.jpg" Height="200" Width="200" />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Quantity"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Visible="false"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Update Stock" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="OK" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
