using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fruit.BuyFruit
{
    public partial class Buy : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Self.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchFruit.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Buy.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchOrder.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Vip.aspx");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("../HomePage.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            //string sql = "INSERT INTO [V_Order] VALUES('o00002','";
            //sql = sql + DropDownList1.Text.ToString() + "','" + TextBox1.Text.ToString() + "','";


            Label2.Visible = true;

        }
    }
}