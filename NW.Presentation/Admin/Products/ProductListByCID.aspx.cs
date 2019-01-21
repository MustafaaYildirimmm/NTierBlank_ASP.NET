using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NW.DataAccess;

namespace NW.Presentation.Admin.Products
{
    public partial class ProductListByCID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CatId = Request.QueryString["CatId"];
            GridView1.DataSource = ProductRepository.GetProductsByCID(Convert.ToInt32(CatId));
            GridView1.DataBind();
        }
    }
}