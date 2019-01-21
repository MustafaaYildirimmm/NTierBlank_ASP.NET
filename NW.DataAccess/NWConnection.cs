using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NW.Entity;

namespace NW.DataAccess
{
    public class NWConnection
    {
        public static NorthwindEntities _db = null;
        public static NorthwindEntities Connection()
        {
            if (_db == null)
                _db = new NorthwindEntities();
            return _db;
        }
    }
}
