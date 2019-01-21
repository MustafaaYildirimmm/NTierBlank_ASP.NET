using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NW.Entity;

namespace NW.DataAccess
{
    public class ProductRepository
    {
        public static NorthwindEntities _db = NWConnection.Connection();

        public static List<Product> GetProductsByCID(int id)
        {

            return _db.Products.Where(t => t.CategoryID == id).ToList();

        }

    }
}
