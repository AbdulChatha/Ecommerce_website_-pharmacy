using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (Pharmacy_store_28_selfEntities db = new Pharmacy_store_28_selfEntities())
        {
            var productlist = db.GetProducts();
            GVP.DataSource = productlist;
            GVP.DataBind();
        }
    }
}