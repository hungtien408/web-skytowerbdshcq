<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="mat-bang.aspx.cs" Inherits="mat_bang" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HCQ-SkyTower</title>
    <meta name="description" content="HCQ-SkyTower" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="apartment-main">
                <div class="title-all">
                    <h1>MẶT BẰNG CĂNG HỘ</h1>
                </div>
                <div class="description">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                </div>
            </div>
        </div>
        <div class="apart-img">
            <img src="assets/images/apart1.jpg" alt="" />
        </div>
        <div class="container">
            <div class="apart-content">
                <p>Các căn hộ SUN TOWER được bố trí xung quanh lõi cứng nhằm đảm bảo giao thông tới các căn hộ là gần nhất. Bảo đảm bán kính thoát hiểm theo tiêu chuẩn.</p>
                
                <p>Hành lang được thiết kế dạng hở, tận dụng chiếu sáng và thông thoáng tự nhiên.</p>
                
                <p>Bố trí mặt bằng căn hộ nhiều hình thức khác nhau. Phân chia diện tích căn hộ linh hoạt. Giúp người sử dụng có thể lựa chọn được loại căn hộ thích hợp với mình.</p>
                
                <p>Căn hộ SUN TOWER có các loại diện tích:</p>
                <p>– Căn hộ 1 phòng ngủ: 45,02m2, 51,35m2.</p>
                <p>– Căn hộ 2 phòng ngủ: 58m2, 60m2, 62m2, 66m2, 69m2.</p>
                <p>– Căn hộ 3 phòng ngủ: 86m2, 87,79m2.</p>
                <p>– Căn hộ ghép: 111m2, 125m2, 128m2, 147m2.</p>
            </div>
            <div class="row apart-main">
                <div class="col-md-6">
                    <div class="apart-box">
                        <div class="apart-img"><img src="assets/images/hinh2.jpg" alt="" /></div>
                        <div class="apart-name">Căn hộ 87,79 m<sup>2</sup></div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="apart-box">
                        <div class="apart-img"><img src="assets/images/hinh3.jpg" alt="" /></div>
                        <div class="apart-name">Căn hộ 111 m<sup>2</sup></div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="apart-box">
                        <div class="apart-img"><img src="assets/images/hinh4.jpg" alt="" /></div>
                        <div class="apart-name">Căn hộ 125 m<sup>2</sup></div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="apart-box">
                        <div class="apart-img"><img src="assets/images/hinh5.jpg" alt="" /></div>
                        <div class="apart-name">Căn hộ 86 m<sup>2</sup></div>
                    </div>
                </div>
            </div>
        </div>
        <uc1:xemnhamau runat="server" ID="xemnhamau" />
    </div>
</asp:Content>

