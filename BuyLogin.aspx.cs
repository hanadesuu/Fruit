using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fruit
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Choose.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyFruit/Self.aspx");
        }
    }
}