<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tong-quan.aspx.cs" Inherits="tong_quan" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HCQ-SkyTower</title>
    <meta name="description" content="HCQ-SkyTower" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="overview-main">
                <div class="title-all">
                    <h1>TỔNG QUAN DỰ ÁN</h1>
                </div>
                <div class="overview-more">
                    <div class="overview-param">
                        <div class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</div>
                        <div class="overview-list">
                            <ul>
                                <li>
                                    <div class="ov-img">
                                        <img src="assets/images/icon2.png" alt="" />
                                    </div>
                                    <div class="ov-param">8,569</div>
                                    <div class="ov-unit">Diện tích toàn khu(m<sup>2</sup>)</div>
                                </li>
                                <li>
                                    <div class="ov-img">
                                        <img src="assets/images/icon3.png" alt="" />
                                    </div>
                                    <div class="ov-param">400</div>
                                    <div class="ov-unit">Số căn hộ</div>
                                </li>
                                <li>
                                    <div class="ov-img">
                                        <img src="assets/images/icon4.png" alt="" />
                                    </div>
                                    <div class="ov-param">16</div>
                                    <div class="ov-unit">Số tầng</div>
                                </li>
                                <li>
                                    <div class="ov-img">
                                        <img src="assets/images/icon5.png" alt="" />
                                    </div>
                                    <div class="ov-param">1,2</div>
                                    <div class="ov-unit">Giá từ (tỷ)</div>
                                </li>
                                <li>
                                    <div class="ov-img">
                                        <img src="assets/images/icon6.png" alt="" />
                                    </div>
                                    <div class="ov-param">380</div>
                                    <div class="ov-unit">Khách hàng đặt chổ</div>
                                </li>
                            </ul>
                        </div>
                        <div class="view-more">
                            <ul>
                                <li><span class="view-title">Mật độ xây dựng:</span><span>49%</span></li>
                                <li><span class="view-title">Không gian xanh:</span><span>3.456 m<sup>2</sup></span></li>
                                <li><span class="view-title">Diện tích sàn xây dựng:</span><span>6.456 m<sup>2</sup></span></li>
                                <li><span class="view-title">Không gian sinh hoạt:</span><span>5.456 m<sup>2</sup> (gồm diện tích đất công viên, hạ tầng kỹ thuật, giao thông...)</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="overview-img">
                        <img src="assets/images/view1.jpg" alt="" />
                    </div>
                </div>
                <div class="overview-content">
                    <div class="overview-box">
                        <div class="over-img">
                            <img src="assets/images/view2.jpg" alt="" /></div>
                        <div class="over-content">
                            <h1>Cuộc sống Xanh</h1>
                            <div class="description mCustomScrollbar content">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed quam lacus. Suspendisse enim tellus, tempor sed vestibulum a, laoreet vel odio. Etiam vel elementum quam. Nunc quam lorem, lobortis sit amet euismod sit amet, porta at lectus. Suspendisse sit amet purus at orci vulputate pretium quis id purus. Suspendisse accumsan sem quis velit dictum sollicitudin. </p>
                                <br />
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer placerat, dui ac rutrum consectetur, nisl ligula euismod odio, in pulvinar massa neque non tellus. Aliquam at dictum libero. </p>
                                <br />
                                <p>Duis sit amet purus eget lorem consectetur fringilla. Etiam quis est vestibulum, condimentum turpis at, dictum risus. Duis faucibus egestas placerat. Aliquam erat volutpat. Vestibulum fermentum libero quis mi rutrum, vel rutrum elit euismod.</p>
                            </div>
                        </div>
                    </div>
                    <div class="overview-box">
                        <div class="over-img">
                            <img src="assets/images/view3.jpg" alt="" /></div>
                        <div class="over-content">
                            <h1>Không gian văn hoá đặc sắc</h1>
                            <div class="description mCustomScrollbar content">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed quam lacus. Suspendisse enim tellus, tempor sed vestibulum a, laoreet vel odio. </p>
                                <br />
                                <p>Etiam vel elementum quam. Nunc quam lorem, lobortis sit amet euismod sit amet, porta at lectus. </p>
                                <br />
                                <p>Suspendisse sit amet purus at orci vulputate pretium quis id purus. Suspendisse accumsan sem quis velit dictum sollicitudin. </p>
                                <br />
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer placerat, dui ac rutrum consectetur, nisl ligula euismod odio, in pulvinar massa neque non tellus. Aliquam at dictum libero. </p>
                            </div>
                        </div>
                    </div>
                    <div class="overview-box">
                        <div class="over-img">
                            <img src="assets/images/view4.jpg" alt="" /></div>
                        <div class="over-content">
                            <h1>Dịch vụ hoàn hảo</h1>
                            <div class="description mCustomScrollbar content">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sed quam lacus. Suspendisse enim tellus, tempor sed vestibulum a, laoreet vel odio. Etiam vel elementum quam. Nunc quam lorem, lobortis sit amet euismod sit amet, porta at lectus. Suspendisse sit amet purus at orci vulputate pretium quis id purus. Suspendisse accumsan sem quis velit dictum sollicitudin. </p>
                                <br />
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer placerat, dui ac rutrum consectetur, nisl ligula euismod odio, in pulvinar massa neque non tellus. Aliquam at dictum libero. </p>
                                <br />
                                <p>Duis sit amet purus eget lorem consectetur fringilla. Etiam quis est vestibulum, condimentum turpis at, dictum risus. Duis faucibus egestas placerat. Aliquam erat volutpat. Vestibulum fermentum libero quis mi rutrum, vel rutrum elit euismod.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc1:xemnhamau runat="server" ID="xemnhamau" />
</asp:Content>

