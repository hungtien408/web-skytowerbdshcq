using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class hinh_anh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Hình Ảnh Dự Án";
            var meta = new HtmlMeta() { Name = "description", Content = "Hình Ảnh Dự Án" };
            Header.Controls.Add(meta);
        }
    }
}