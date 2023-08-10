using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class ProductSetup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (IsPostBack) return;
        using (Pharmacy_store_28_selfEntities db = new Pharmacy_store_28_selfEntities())
        {
            var brands = db.GetBrands().ToList();
            ddlBrand.DataSource = brands;
            ddlBrand.DataTextField = "BrandName";
            ddlBrand.DataValueField = "BrandID";
            ddlBrand.DataBind();
            ddlBrand.Items.Add(new ListItem("Select", "0"));
            ddlBrand.SelectedValue = "0";
            var categories = db.GetCategory().ToList();
            ddlCategory.DataSource = categories;
            ddlCategory.DataTextField = "CategoryName";
            ddlCategory.DataValueField = "CategoryID";
            ddlCategory.DataBind();
            ddlCategory.Items.Add(new ListItem("Select", "0"));
            ddlCategory.SelectedValue = "0";
            int productid = Convert.ToInt32(Request.QueryString["pid"]);
            tblProduct p = db.tblProducts.FirstOrDefault(v => v.ProductID == productid);
            if (p != null)
            {
                txtPName.Text = p.ProductName;
                txtPPrice.Text = Convert.ToString(p.Price);
                txtPQuantity.Text = Convert.ToString(p.Quantity);
                if (p.PrescriptionRequired == true)
                {
                    PR.SelectedValue = "1";
                }
                else
                {
                    PR.SelectedValue = "0";
                }
                ddlBrand.SelectedValue = Convert.ToString(p.BrandID);
                ddlCategory.SelectedValue = Convert.ToString(p.CatgoryID);
                txtPActiveIn.Text = p.ActiveIngredient;
                txtDosage.Text = p.DosageStrength;
                txtPakageSize.Text = p.PakageSize;
                txtExpirydate.Text = p.ExpiryDate.ToString("yyyy-MM-dd");
                txtDiscription.Text = p.Description;

            }

        }
    }
    protected void cmdSave_Click(object sender, EventArgs e)
    {
        string pathfortbl = "";
        if (fupload.HasFile)
        {

            string fileext = Path.GetExtension(fupload.FileName);
            if (fileext == ".jpg" || fileext == ".png")
            {
                string filename = Path.GetFileName(fupload.FileName);
                string path = Server.MapPath("files/" + filename);
                pathfortbl = "files/" + filename;
                fupload.SaveAs(path);
            }
            else
            {
                Response.Write("this file type not allowed");
            }


        }
        else
        {
            Response.Write("please select file");
        }
        if (Request.QueryString["pid"] == null)
        {
            using (Pharmacy_store_28_selfEntities db = new Pharmacy_store_28_selfEntities())
            {
                tblProduct p = new tblProduct();
                p.ProductName = txtPName.Text;
                p.Price = Convert.ToDouble(txtPPrice.Text);
                p.Quantity = Convert.ToInt32(txtPQuantity.Text);
                if (PR.SelectedValue == "1")
                {
                    p.PrescriptionRequired = true;
                }
                else
                {
                    p.PrescriptionRequired = false;
                }
                p.BrandID = Convert.ToInt32(ddlBrand.SelectedValue);
                p.CatgoryID = Convert.ToInt32(ddlCategory.SelectedValue);
                p.ActiveIngredient = txtPActiveIn.Text;
                p.DosageStrength = txtDosage.Text;
                p.PakageSize = txtPakageSize.Text;
                p.ExpiryDate = Convert.ToDateTime(txtExpirydate.Text);
                p.DateAdded = DateTime.Now.Date;
                p.Description = txtDiscription.Text;
                p.ImageURL = pathfortbl;
                db.tblProducts.Add(p);
                db.SaveChanges();
                Response.Redirect("ProductList.aspx");

            }
        }
        else
        {
            using (Pharmacy_store_28_selfEntities db = new Pharmacy_store_28_selfEntities())
            {
                int productid = Convert.ToInt32(Request.QueryString["pid"]);
                tblProduct p = db.tblProducts.FirstOrDefault(v => v.ProductID == productid);
                p.ProductName = txtPName.Text;
                p.Price = Convert.ToDouble(txtPPrice.Text);
                p.Quantity = Convert.ToInt32(txtPQuantity.Text);
                if (PR.SelectedValue == "1")
                {
                    p.PrescriptionRequired = true;
                }
                else
                {
                    p.PrescriptionRequired = false;
                }
                p.BrandID = Convert.ToInt32(ddlBrand.SelectedValue);
                p.CatgoryID = Convert.ToInt32(ddlCategory.SelectedValue);
                p.ActiveIngredient = txtPActiveIn.Text;
                p.DosageStrength = txtDosage.Text;
                p.PakageSize = txtPakageSize.Text;
                p.ExpiryDate = Convert.ToDateTime(txtExpirydate.Text);
                p.DateAdded = DateTime.Now.Date;
                p.Description = txtDiscription.Text;
                p.ImageURL = pathfortbl;
                db.SaveChanges();
                Response.Redirect("ProductList.aspx");

            }
        }
    }
}