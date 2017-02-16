using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class tin_tuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Tin Tức";
            var meta = new HtmlMeta() { Name = "description", Content = "Tin Tức" };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void lstNewCategory2_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        var odsNews = (ObjectDataSource)e.Item.FindControl("odsNews");
        var DataPager1 = (DataPager)e.Item.FindControl("DataPager1");

        if (((DataView)odsNews.Select()).Count <= DataPager1.PageSize)
        {
            DataPager1.Visible = false;
        }
    }
}