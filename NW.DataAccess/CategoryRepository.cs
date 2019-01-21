using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NW.Entity;

namespace NW.DataAccess
{
    public class CategoryRepository
    {
        public static NorthwindEntities _db = NWConnection.Connection();
        public static List<Category> GetAllCategory()
        {
            return _db.Categories.ToList();
        }
    }
}
