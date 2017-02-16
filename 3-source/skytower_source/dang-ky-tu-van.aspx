<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="dang-ky-tu-van.aspx.cs" Inherits="dang_ky_tu_van" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                        <%--<div class="register-radio">
                            <div class="reg-ra">
                                <input type="radio" name="gender" value="male">
                                Ông
                            </div>
                            <div class="reg-ra">
                                <input type="radio" name="gender" value="male">
                                Bà
                            </div>
                        </div>--%>
                        <div class="register-radio">
                            <asp:RadioButtonList ID="rdbGender" CssClass="sex" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0" Selected="True">Ông</asp:ListItem>
                                <asp:ListItem Value="1">Bà</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Tên Quý hhách<span>*</span></label>
                        <div class="register-input">
                            <asp:TextBox ID="txtFullName" CssClass="register-textbox" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtFullName"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Số di động<span>*</span></label>
                        <div class="register-input">
                            <asp:TextBox ID="txtPhone" CssClass="register-textbox" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtPhone"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Email<span>*</span></label>
                        <div class="register-input">
                            <asp:TextBox ID="txtEmailRegister" CssClass="register-textbox" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator2"
                                runat="server" ValidationGroup="Register" ControlToValidate="txtEmailRegister"
                                ErrorMessage="Sai định dạng email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                                Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtEmailRegister"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Mục tiêu đăng ký của quý khách<span>*</span></label>
                        <div class="register-radio">
                            <asp:RadioButtonList ID="rdbMucTieu" CssClass="sex" runat="server" RepeatDirection="Vertical">
                                <asp:ListItem Value="0" Selected="True">Mua để ở</asp:ListItem>
                                <asp:ListItem Value="1">Mua để đầu tư</asp:ListItem>
                                <asp:ListItem Value="2">Chỉ tìm hiểu thông tin</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Đăng ký căn hộ<span>*</span></label>
                        <%--<div class="register-check">
                            <p class="w-check">
                                <asp:CheckBox ID="ckbHaiPhongNgu" runat="server" Text="2 phòng ngủ" Checked="true" />
                            </p>
                            <p class="w-check">
                                <asp:CheckBox ID="ckbBaPhongNgu" runat="server" Text="3 phòng ngủ" />
                            </p>
                        </div>--%>
                        <div class="register-radio">
                            <asp:RadioButtonList ID="rdbPhongNgu" CssClass="sex" runat="server" RepeatDirection="Vertical">
                                <asp:ListItem Value="0" Selected="True">2 phòng ngủ</asp:ListItem>
                                <asp:ListItem Value="1">3 phòng ngủ</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Khoảng tầng<span>*</span></label>
                        <%--<div class="register-check">
                            <input type="checkbox" name="vehicle" value="Bike">
                            Từ tầng 3 - 8<br>
                            <input type="checkbox" name="vehicle" value="Car" checked>
                            Từ tầng 9 - 15
                            <br />
                            <input type="checkbox" name="vehicle" value="Car" checked>
                            Trên tầng 15<br />
                        </div>--%>
                        <div class="register-radio">
                            <asp:RadioButtonList ID="rdbKhoangTang" CssClass="sex" runat="server" RepeatDirection="Vertical">
                                <asp:ListItem Value="0" Selected="True">Từ tầng 3 - 8</asp:ListItem>
                                <asp:ListItem Value="1">Từ tầng 9 - 15</asp:ListItem>
                                <asp:ListItem Value="2">Trên tầng 15</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Thanh toán<span>*</span></label>
                        <div class="register-radio">
                            <asp:RadioButtonList ID="rdbThanhToan" CssClass="sex" runat="server" RepeatDirection="Vertical">
                                <asp:ListItem Value="0" Selected="True">Thanh toán theo tiến độ dự án</asp:ListItem>
                                <asp:ListItem Value="1">Thanh toán 98% hợp đồng</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Hỗ trợ vay ngân hàng<span>*</span></label>
                        <div class="register-radio">
                            <asp:RadioButtonList ID="rdbHoTroVay" CssClass="sex" runat="server" RepeatDirection="Vertical">
                                <asp:ListItem Value="0" Selected="True">Có</asp:ListItem>
                                <asp:ListItem Value="1">Không</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="register-w">
                        <label class="register-lb">Nội dung yêu cầu<span>*</span></label>
                        <asp:TextBox ID="txtContent" CssClass="register-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtContent"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="register-w register-bg">
                        <div class="register-note">
                            Chúng tôi sẽ "ƯU TIÊN" chọn sản phẩm phù hợp với yêu cầu của Quý khách như khoảng tầng, hướng palcon, hướng cửa chính... hoặc bất kỳ thông tin Quý khách thắc mắc & quan tâm.
                        </div>
                        <div class="register-btn">
                            <asp:Button ID="btnDangKy" CssClass="button-btn" runat="server" Text="ĐĂNG KÝ" OnClick="btnDangKy_Click" ValidationGroup="Register" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

