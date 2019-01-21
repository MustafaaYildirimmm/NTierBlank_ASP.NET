using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NW.DataAccess;
using NW.Entity;

namespace NW.Presentation.Admin.Category
{
    public partial class CategoryList : System.Web.UI.Page
    {
        public int KayitSayisi;
        protected void Page_Load(object sender, EventArgs e)
        {
            List<NW.Entity.Category> CatList = CategoryRepository.GetAllCategory();
            Repeater1.DataSource = CatList;
            Repeater1.DataBind();

            KayitSayisi = CatList.Count;
        }
    }
}