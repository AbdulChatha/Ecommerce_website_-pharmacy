using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ProductList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillProducts();
    }
    protected void fillProducts()
    {
        using (Pharmacy_store_28_selfEntities db = new Pharmacy_store_28_selfEntities())
        {
            var productlist = db.GetProducts();
            GVProduct.DataSource = productlist;
            GVProduct.DataBind();
        }
    }
    protected void GVProduct_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Response.Redirect("ProductSetup.aspx?pid=" + e.CommandArgument);
        }
        else
        {
            using (Pharmacy_store_28_selfEntities db = new Pharmacy_store_28_selfEntities())
            {
                int productid = Convert.ToInt32(e.CommandArgument);
                tblProduct s = db.tblProducts.FirstOrDefault(v => v.ProductID == productid);
                string filepath = @"D:\BSSE 6th\e_com code\PharmacyStoreBSSE51F20S028\" + s.ImageURL;
                File.Delete(filepath);
                db.DeleteProduct(Convert.ToInt32(e.CommandArgument));
            }
            fillProducts();
        }
    }
}