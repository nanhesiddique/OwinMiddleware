//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SatyamSirWork1.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class tbl_customer
    {
        public int cust_id { get; set; }
        [Required]
        public string cust_name { get; set; }
        public Nullable<int> cust_age { get; set; }
        public string cust_email { get; set; }
        public string cust_address { get; set; }
        public string cust_pincode { get; set; }
        public string cust_contact { get; set; }
        public Nullable<int> createdby { get; set; }
        public Nullable<System.DateTime> createddate { get; set; }
    }
}
