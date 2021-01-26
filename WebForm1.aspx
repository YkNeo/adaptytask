<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="covidsheild.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>/\ Covid Sheild /\</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>LOGIN<br />
            </h1> 


            User Name:
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <br /> <br />
            Password:&nbsp;&nbsp; 
            <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </div> <br />
            <asp:Button ID="submit" runat="server" Text="OK" OnClick="submit_Click" />
            <asp:Button id="reset" runat="server" Text="Clear All" OnClick="reset_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Incorrect Username/Password <br> Try Again" Visible="false"></asp:Label>
    </form>
</body>
</html>
