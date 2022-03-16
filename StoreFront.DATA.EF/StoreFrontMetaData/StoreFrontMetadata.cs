using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace StoreFront.DATA.EF//.StoreFrontMetaData
{
    class StoreFrontMetadata
    {
        public class ProductMetadata
        {
            [Required(ErrorMessage ="*Required field")]
            [StringLength(25, ErrorMessage ="*Must be 25 characters or less")]
            [Display(Name = "Product")]
            public string ProductName { get; set; }

            [Display(Name = "Category")]
            public int CategoryID { get; set; }

            public decimal Price { get; set; }

            [Required(ErrorMessage ="*Required field")]
            [Display(Name = "Status")]
            public int StatusID { get; set; }

            [StringLength(100, ErrorMessage = "*Must be 100 characters or less")]
            [UIHint("MultilineText")]
            public string Description { get; set; }

            [StringLength(100, ErrorMessage = "*Must be 100 characters or less")]
            [Display(Name = "Image")]
            public string ProductImage { get; set; }
        }

        public class EmployeeMetadata
        {
            //public int EmployeeID { get; set; }

            [Required(ErrorMessage ="*Required field")]
            [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
            public string FirstName { get; set; }

            [Required(ErrorMessage ="*Required field")]
            [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
            public string LastName { get; set; }

            public int DepartmentID { get; set; }

            [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
            public string Position { get; set; }

            public int DirectReportID { get; set; }
        }

        public class CategoryMetadata
        {
            //public int CategoryID { get; set; }

            [Required(ErrorMessage = "*Required field")]
            [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
            public string CategoryName { get; set; }
        }

        public class DepartmentMetadata
        {
            //public int DepartmentID { get; set; }

            [Required(ErrorMessage = "*Required field")]
            [StringLength(50, ErrorMessage = "*Must be 50 characters or less")]
            public string DepartmentName { get; set; }
        }

        public class StockStatusMetadata
        {
            //public int StatusID { get; set; }

            [Required(ErrorMessage = "*Required field")]
            [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
            public string Status { get; set; }
        }
    }
}
