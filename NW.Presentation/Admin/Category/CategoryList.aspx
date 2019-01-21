<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="NW.Presentation.Admin.Category.CategoryList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/MyStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <div class="panel panel-info rptHeader">
                        <h1>Categories</h1>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="panel panel-body rptItem divstyle">
                        <a href='<%# ResolveClientUrl("/Admin/Products/ProductListByCID.aspx?CatId="+Eval("CategoryID")) %>'><%#Eval("CategoryName") %></a>
                    </div>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <div class="panel panel-body rptAlternatingItem divstyle">
                        <a href='<%# ResolveClientUrl("/Admin/Products/ProducListByCID.aspx?CatId="+Eval("CategoryID")) %>'><%#Eval("CategoryName") %></a>
                    </div>
                </AlternatingItemTemplate>
                <FooterTemplate>
                    <div id="footer" class="divstyle">
                        Kayit sayisi=<%=KayitSayisi %>
                    </div>
                </FooterTemplate>

            </asp:Repeater>
        </div>
    </form>
</body>
</html>
