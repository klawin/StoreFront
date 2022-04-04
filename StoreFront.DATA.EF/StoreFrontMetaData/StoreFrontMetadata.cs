using System.ComponentModel.DataAnnotations;

namespace StoreFront.DATA.EF//.StoreFrontMetaData
{
    #region Product Metadata
    
    public class ProductMetadata
    {
        [Key]
        public int ProductID { get; set; }

        [Required(ErrorMessage = "*Required field")]
        [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
        [Display(Name = "Product")]
        public string ProductName { get; set; }

        [Display(Name = "Category")]
        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        public int CategoryID { get; set; }

        [DisplayFormat(NullDisplayText = "[-N/A-]", DataFormatString ="{0:c}")]
        [Range(0, double.MaxValue, ErrorMessage = "*Must be a valid number, 0 or larger")]
        public decimal Price { get; set; }

        [Required(ErrorMessage = "*Required field")]
        [Display(Name = "Status")]
        public int StatusID { get; set; }

        [StringLength(100, ErrorMessage = "*Must be 100 characters or less")]
        [UIHint("MultilineText")]
        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        public string Description { get; set; }

        [StringLength(100, ErrorMessage = "*Must be 100 characters or less")]
        [Display(Name = "Image")]
        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        public string ProductImage { get; set; }
    }

    [MetadataType(typeof(ProductMetadata))]
    public partial class Product { }
    #endregion
    
    #region Employee Metedata

    public class EmployeeMetadata
    {
        [Key]
        public int EmployeeID { get; set; }

        [Required(ErrorMessage = "*Required field")]
        [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "*Required field")]
        [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
        public string LastName { get; set; }

        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        public int DepartmentID { get; set; }

        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
        public string Position { get; set; }

        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        public int DirectReportID { get; set; }
    }

    [MetadataType(typeof(EmployeeMetadata))]
    public partial class Employee
    {
        [Display(Name = "Employee")]
        public string FullName
        {
            get { return FirstName + " " + LastName; }
        }
    }
    #endregion

    #region Category Metadata
    public class CategoryMetadata
    {
        [Key]
        public int CategoryID { get; set; }

        [Required(ErrorMessage = "*Required field")]
        [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
        [Display(Name ="Category")]
        public string CategoryName { get; set; }
    }

    [MetadataType(typeof(CategoryMetadata))]
    public partial class Category { }
    #endregion

    #region Department Metadata
    
    public class DepartmentMetadata
    {
        [Key]
        public int DepartmentID { get; set; }

        [Required(ErrorMessage = "*Required field")]
        [StringLength(50, ErrorMessage = "*Must be 50 characters or less")]
        [Display(Name = "Department")]
        public string DepartmentName { get; set; }
    }

    [MetadataType(typeof(DepartmentMetadata))]
    public partial class Department { }
    #endregion

    #region Stock Status Metadata

    public class StockStatusMetadata
    {
        [Key]
        public int StatusID { get; set; }

        [Required(ErrorMessage = "*Required field")]
        [StringLength(25, ErrorMessage = "*Must be 25 characters or less")]
        public string Status { get; set; }
    }

    [MetadataType(typeof(StockStatusMetadata))]
    public partial class StockStatus { }

    #endregion
}
