using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.Cookies["Pharmacys028"]!=null)
        {
            Session["UserID"] = Request.Cookies["Pharmacys028"]["UserId"];
            Session["FirstName"] = Request.Cookies["Pharmacys028"]["FirstName"];
            Session.Timeout = 720;
            Response.Redirect("ProductList.aspx");
        }
    }
    protected void Login_Click(object sender, EventArgs e)
    {
        using (Pharmacy_store_28_selfEntities db = new Pharmacy_store_28_selfEntities())
        {
            var query = db.DoLogin(txtEmail.Text, txtPassword.Text).ToList();
            if (query.Count > 0)
            {
                Session["UserID"]=query[0].UserId;
                Session["FirstName"]=query[0].FirstName;
                Session.Timeout=720;
                Response.Cookies["Pharmacys028"]["UserId"] = query[0].UserId.ToString();
                Response.Cookies["Pharmacys028"]["FirstName"] = query[0].FirstName;
                Response.Cookies["Pharmacys028"].Expires = DateTime.Now.AddDays(1);

                Response.Redirect("ProductList.aspx");
            }
            else
            {
                Response.Write("invalid Email or Password");
            }
        }
    }
}