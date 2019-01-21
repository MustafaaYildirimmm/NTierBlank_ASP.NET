<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductListByCID.aspx.cs" Inherits="NW.Presentation.Admin.Products.ProductListByCID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" BackColor="Turquoise" Class="table table-hover table-striped panel panel-body">

        </asp:GridView>
    </div>
    </form>
</body>
</html>
