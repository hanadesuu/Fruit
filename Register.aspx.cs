using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fruit
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Choose.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [Customer] VALUES('00002','";
            sql = sql + TextBox1.Text.ToString()+"','";
            if(RadioButton1.Checked)
                sql = sql +"男','";
            else 
                sql = sql + "女','";

            sql = sql + TextBox6.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + DateTime.Today.ToString("yyyy-mm-dd") + "','" + TextBox2.Text.ToString() + "')";
            //Label2.Text = sql.ToString();
            SqlDataSource1.InsertCommand = sql;
            SqlDataSource1.Insert();
            Label1.Visible = true;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}