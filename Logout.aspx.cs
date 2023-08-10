using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["UserId"] = null;
        //Session["FirstName"] = null;
        Session.Abandon();
        Response.Cookies["Pharmacys028"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("Login.aspx");
    }
}