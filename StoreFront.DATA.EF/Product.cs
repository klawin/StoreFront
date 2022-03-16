//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StoreFront.DATA.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public Nullable<decimal> Price { get; set; }
        public int StatusID { get; set; }
        public string Description { get; set; }
        public string ProductImage { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual StockStatu StockStatu { get; set; }
    }
}
