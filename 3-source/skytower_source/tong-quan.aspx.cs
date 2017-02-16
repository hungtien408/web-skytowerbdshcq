using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class tong_quan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Tổng Quan";
            var meta = new HtmlMeta() { Name = "description", Content = "Tổng Quan" };
            Header.Controls.Add(meta);
        }
    }
}