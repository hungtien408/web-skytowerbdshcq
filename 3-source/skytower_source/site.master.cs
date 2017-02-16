using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using TLLib;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("san-pham.aspx?ci=") || page.Contains("chi-tiet-san-pham.aspx?pi="))
                activePage = "san-pham.aspx";
            else if (page.Contains("-tt-"))
                activePage = "tin-tuc.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;
        }
    }
    private void sendEmail()
    {
        string msg = "<h3>SKY TOWER: CONTACT</h3><br/>";
        msg += "<b>Họ tên: </b>" + txtFullName.Text.Trim().ToString() + "<br />";
        msg += "<b>Email: </b>" + txtEmail.Text.Trim().ToString() + "<br />";
        msg += "<b>Số điện thoại: </b>" + txtPhone.Text.Trim().ToString() + "<br />";
        msg += "<b>Địa chỉ: </b>" + txtAddress.Text.Trim().ToString() + "<br />";
        msg += "<b>Nội dung: </b>" + txtNoiDung.Text.Trim().ToString();
        TLLib.Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "hungtien408@gmail.com", "", "Contact SKY TOWER", msg, true);
    }
    protected void btGui_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (RadCaptcha1.IsValid)
            {
                //send email         
                sendEmail();
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã liên lạc với chúng tôi. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!')});", true);
                txtFullName.Text = "";
                txtPhone.Text = "";
                txtEmail.Text = "";
                txtAddress.Text = "";
                txtNoiDung.Text = "";
            }
        }
    }
}
