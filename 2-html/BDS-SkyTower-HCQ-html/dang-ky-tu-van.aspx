<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="dang-ky-tu-van.aspx.cs" Inherits="dang_ky_tu_van" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HCQ-SkyTower</title>
    <meta name="description" content="HCQ-SkyTower" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="register-main">
                <div class="title-all">
                    <h1>ĐĂNG KÝ TƯ VẤN</h1>
                </div>
                <div class="description">
                    Đăng ký tư vấn vị trí đẹp nhất dự án SKY TOWRER giá chủ đầu tư, từ 02 - 3 phòng ngủ, thanh toán 50% nhận nhà, nhiều ưu đãi, giao nhà quý 4/2016, hỗ trợ vay ngân hàng. Số lượng có hạn.
                </div>
                <div class="register-form">
                    <div class="register-w">
                        <label class="register-lb">Giới tinh<span>*</span></label>
                        <div class="register-radio">
                            <div class="reg-ra">
                                <input type="radio" name="gender" value="male">
                                Ông
                            </div>
                            <div class="reg-ra">
                                <input type="radio" name="gender" value="male">
                                Bà
                            </div>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Tên Quý hhách<span>*</span></label>
                        <div class="register-input">
                            <asp:TextBox ID="txtFullName" CssClass="register-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Số di động<span>*</span></label>
                        <div class="register-input">
                            <asp:TextBox ID="TextBox1" CssClass="register-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Email<span>*</span></label>
                        <div class="register-input">
                            <asp:TextBox ID="TextBox2" CssClass="register-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Mục tiêu đăng ký của quý khách<span>*</span></label>
                        <div class="register-radio">
                            <input type="radio" name="gender" value="male">
                            Mua để ở
                            <br />
                            <input type="radio" name="gender" value="female">
                            Mua để đầu tư
                            <br />
                            <input type="radio" name="gender" value="female">
                            Chỉ tìm hiểu thông tin
                            <br />
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Đăng ký căn hộ<span>*</span></label>
                        <div class="register-check">
                            <input type="checkbox" name="vehicle" value="Bike">
                            2 phòng ngủ<br>
                            <input type="checkbox" name="vehicle" value="Car" checked>
                            3 phòng ngủ<br />
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Khoảng tầng<span>*</span></label>
                        <div class="register-check">
                            <input type="checkbox" name="vehicle" value="Bike">
                            Từ tầng 3 - 8<br>
                            <input type="checkbox" name="vehicle" value="Car" checked>
                            Từ tầng 9 - 15
                            <br />
                            <input type="checkbox" name="vehicle" value="Car" checked>
                            Trên tầng 15<br />
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Thanh toán<span>*</span></label>
                        <div class="register-radio">
                            <input type="radio" name="gender" value="male">
                            Thanh toán theo tiến độ dự án
                            <br />
                            <input type="radio" name="gender" value="female">
                            Thanh toán 98% hợp đồng
                            <br />
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Hỗ trợ vay ngân hàng<span>*</span></label>
                        <div class="register-radio">
                            <input type="radio" name="gender" value="male">
                            Có
                            <br />
                            <input type="radio" name="gender" value="female">
                            Không
                            <br />
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Nội dung yêu cầu<span>*</span></label>
                        <asp:TextBox ID="TextBox3" CssClass="register-area" runat="server" TextMode="MultiLine" placeholder=""></asp:TextBox>
                    </div>
                    <div class="register-w register-bg">
                        <div class="register-note">
                            Chúng tôi sẽ "ƯU TIÊN" chọn sản phẩm phù hợp với yêu cầu của Quý khách như khoảng tầng, hướng palcon, hướng cửa chính... hoặc bất kỳ thông tin Quý khách thắc mắc & quan tâm.
                        </div>
                         <div class="register-btn">
                            <asp:button ID="Button1" CssClass="button-btn" runat="server" text="ĐĂNG KÝ" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

