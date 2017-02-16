using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class dang_ky_tu_van : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Đăng Ký Tư Vấn";
            var meta = new HtmlMeta() { Name = "description", Content = "Đăng Ký Tư Vấn" };
            Header.Controls.Add(meta);
        }
    }
    private void sendEmail()
    {
        string msg = "<h3>SKY TOWER: ĐĂNG KÝ TƯ VẤN</h3><br/>";
        msg += "<b>Giới tính: </b>" + rdbGender.SelectedItem.Text + "<br /><br />";
        msg += "<b>Tên Quý hhách: </b>" + txtFullName.Text.Trim().ToString() + "<br /><br />";
        msg += "<b>Số di động: </b>" + txtPhone.Text.Trim().ToString() + "<br /><br />";
        msg += "<b>Email: </b>" + txtEmailRegister.Text.Trim().ToString() + "<br /><br />";
        msg += "<b>Mục tiêu đăng ký: </b>" + rdbMucTieu.SelectedItem.Text + "<br /><br />";
        msg += "<b>Đăng ký căn hộ: </b>" + rdbPhongNgu.SelectedItem.Text + "<br /><br />";
        msg += "<b>Khoảng tầng: </b>" + rdbKhoangTang.SelectedItem.Text + "<br /><br />";
        msg += "<b>Thanh toán: </b>" + rdbThanhToan.SelectedItem.Text + "<br /><br />";
        msg += "<b>Hỗ trợ vay ngân hàng: </b>" + rdbHoTroVay.SelectedItem.Text + "<br /><br />";
        msg += "<b>Nội dung yêu cầu: </b>" + txtContent.Text.Trim().ToString();
        TLLib.Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", "hungtien408@gmail.com", "", "ĐĂNG KÝ TƯ VẤN SKY TOWER", msg, true);
    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //if (RadCaptcha1.IsValid)
            //{
                //send email         
                sendEmail();
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cám ơn bạn đã đăng ký tư vấn. Thông báo của bạn đã được gửi đi. Chúng tôi sẽ liên lạc với bạn trong thời gian sớm nhất!')});", true);
                txtFullName.Text = "";
                txtPhone.Text = "";
                txtEmailRegister.Text = "";
                txtContent.Text = "";
            //}
        }
    }
}