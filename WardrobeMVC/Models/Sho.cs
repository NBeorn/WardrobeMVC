//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeMVC.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Sho
    {
        public int ShoesID { get; set; }
        [Display(Name = "Name")]
        public string ShoesName { get; set; }
        [Display(Name = "Color")]
        public string ShoesColor { get; set; }
        [Display(Name = "Season")]
        public string ShoesSeason { get; set; }
        [Display(Name = "Occassion")]
        public string ShoesOccassion { get; set; }
        public string ShoesPhoto { get; set; }
    }
}
