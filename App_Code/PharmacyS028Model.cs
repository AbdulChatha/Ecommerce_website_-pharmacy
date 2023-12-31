﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class tblBrand
{
    public tblBrand()
    {
        this.tblProducts = new HashSet<tblProduct>();
    }

    public int BrandID { get; set; }
    public string BrandName { get; set; }

    public virtual ICollection<tblProduct> tblProducts { get; set; }
}

public partial class tblCategory
{
    public tblCategory()
    {
        this.tblProducts = new HashSet<tblProduct>();
    }

    public int CategoryID { get; set; }
    public string CategoryName { get; set; }

    public virtual ICollection<tblProduct> tblProducts { get; set; }
}

public partial class tblProduct
{
    public int ProductID { get; set; }
    public string ProductName { get; set; }
    public string Description { get; set; }
    public int CatgoryID { get; set; }
    public double Price { get; set; }
    public int Quantity { get; set; }
    public int BrandID { get; set; }
    public bool PrescriptionRequired { get; set; }
    public string ActiveIngredient { get; set; }
    public string DosageStrength { get; set; }
    public string PakageSize { get; set; }
    public System.DateTime ExpiryDate { get; set; }
    public System.DateTime DateAdded { get; set; }
    public string ImageURL { get; set; }

    public virtual tblBrand tblBrand { get; set; }
    public virtual tblCategory tblCategory { get; set; }
}

public partial class tblUser
{
    public int UserId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string EmailAddress { get; set; }
    public string Password { get; set; }
    public bool Status { get; set; }
}

public partial class DoLogin_Result
{
    public int UserId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string EmailAddress { get; set; }
    public string Password { get; set; }
    public bool Status { get; set; }
}

public partial class GetBrands_Result
{
    public int BrandID { get; set; }
    public string BrandName { get; set; }
}

public partial class GetCategory_Result
{
    public int CategoryID { get; set; }
    public string CategoryName { get; set; }
}

public partial class GetProducts_Result
{
    public string BrandName { get; set; }
    public string CategoryName { get; set; }
    public int ProductID { get; set; }
    public string ProductName { get; set; }
    public string Description { get; set; }
    public int CatgoryID { get; set; }
    public double Price { get; set; }
    public int Quantity { get; set; }
    public int BrandID { get; set; }
    public bool PrescriptionRequired { get; set; }
    public string ActiveIngredient { get; set; }
    public string DosageStrength { get; set; }
    public string PakageSize { get; set; }
    public System.DateTime ExpiryDate { get; set; }
    public System.DateTime DateAdded { get; set; }
    public string ImageURL { get; set; }
}
