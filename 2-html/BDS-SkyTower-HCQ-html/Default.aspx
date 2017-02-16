<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HCQ-SkyTower</title>
    <meta name="description" content="HCQ-SkyTower" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div id="slider-banner" class="nivoSlider">
            <div class="slide">
                <img src="assets/images/banner-img-1.jpg" alt="" />
            </div>
            <div class="slide">
                <img src="assets/images/banner-img-2.jpg" alt="" />
            </div>
        </div>
    </div>

    <div class="clr"></div>
    <div class="overview-default">
        <div class="container">
            <div class="title-main">
                <h1>TỔNG QUAN DỰ ÁN</h1>
            </div>
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
                        <div class="ov-unit">Khách hàng đã đặt chổ</div>
                    </li>
                </ul>
            </div>
           
        </div>
    </div>
    <div class="container">
        <div class="location-default">
            <div class="loca-text">
                <h1>VỊ TRÍ ĐẮC ĐỊA</h1>
                <div class="description">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco onsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua eiusm od tempor incididunt ut  
                </div>
                <div class="loca-list">
                    <ul>
                        <li><span>
                            <img src="assets/images/icon7.png" alt="" /></span> Sân bay Tân Sơn Nhất  - 500m</li>
                        <li><span>
                            <img src="assets/images/icon8.png" alt="" /></span> Chợ Hòa Mỹ - 1,5km</li>
                        <li><span>
                            <img src="assets/images/icon9.png" alt="" /></span> Bến xe trung tâm - 1km</li>
                        <li><span>
                            <img src="assets/images/icon10.png" alt="" /></span> Bệnh viện GTVT - 500m</li>
                        <li><span>
                            <img src="assets/images/icon11.png" alt="" /></span> Trường Trần Quốc Toản - 1km</li>
                        <li><span>
                            <img src="assets/images/icon12.png" alt="" /></span> Siêu thị CoopMart - 1km</li>
                    </ul>
                </div>
            </div>
            <div class="loca-img">
                <img src="assets/images/hinh1.jpg" alt="" />
            </div>
        </div>
    </div>
    <div class="utilities-default">
        <div class="container">
            <div class="title-main">
                <h1>TỔNG QUAN DỰ ÁN</h1>
            </div>
            <div class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</div>
            <div id="sliderUtilities" class="owl-carousel uti-main">
                <div class="item">
                    <div class="item-img">
                        <a data-modal="#login-modal" href="javascript:void(0);">
                            <img src="assets/images/img1.jpg" alt="" /></a>
                        <div class="item-icon">+</div>
                    </div>
                    <div class="item-name">Trung tâm thương mại 7 tầng</div>
                    <div class="description">Với cơ sở vật chất hiện đại đáp ứng nhu cầu mua sắm, ăn uống, thư giãn, giải trí cho cư dân.</div>
                </div>
                <div class="item">
                    <div class="item-img">
                        <a data-modal="#login-modal1" href="javascript:void(0);">
                            <img src="assets/images/img2.jpg" alt="" /></a>
                        <div class="item-icon">+</div>
                    </div>
                    <div class="item-name">Hệ thống an ninh</div>
                    <div class="description">Bảo vệ căn hộ 24/24, hệ thống thang máy điện tử thông minh rút ngắn thời gian đợi thang máy.</div>
                </div>
                <div class="item">
                    <div class="item-img">
                        <a data-modal="#login-modal2" href="javascript:void(0);">
                            <img src="assets/images/img3.jpg" alt="" /></a>
                        <div class="item-icon">+</div>
                    </div>
                    <div class="item-name">hồ bơi, gym, spa</div>
                    <div class="description">Với cơ sở vật chất hiện đại đáp ứng nhu cầu mua sắm, ăn uống, thư giãn, giải trí cho cư dân.</div>
                </div>
                <div class="item">
                    <div class="item-img">
                        <a data-modal="#login-modal2" href="javascript:void(0);">
                            <img src="assets/images/img1.jpg" alt="" /></a>
                        <div class="item-icon">+</div>
                    </div>
                    <div class="item-name">Trung tâm thương mại 7 tầng</div>
                    <div class="description">Với cơ sở vật chất hiện đại đáp ứng nhu cầu mua sắm, ăn uống, thư giãn, giải trí cho cư dân.</div>
                </div>
            </div>
        </div>
    </div>
    <div id="login-modal" class="modal" style="display: none;">
        <div class="sliderGallery gallery-slider">
            <div class="slider-for">
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img2-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img3-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img4-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img5-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img6-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img7-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery-smalls">
                <div class="slider-nav">
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img2-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img3-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img4-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img5-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img6-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img7-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="login-modal1" class="modal" style="display: none;">
        <div class="sliderGallery gallery-slider">
            <div class="slider-for">
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img2-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img3-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img4-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img5-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img6-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img7-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery-smalls">
                <div class="slider-nav">
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img2-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img3-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img4-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img5-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img6-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img7-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="login-modal2" class="modal" style="display: none;">
        <div class="sliderGallery gallery-slider">
            <div class="slider-for">
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img3-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img4-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img5-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img6-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img7-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery-smalls">
                <div class="slider-nav">
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img3-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img4-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img5-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img6-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img7-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="picture-default">
            <div class="title-all">
                <h1>HÌNH ẢNH DỰ ÁN</h1>
            </div>
            <div class="pic-main">
                <div class="item">
                    <a data-modal="#login-modal3" href="javascript:void(0);">
                        <div class="item-img">
                            <img src="assets/images/img4.jpg" alt="" />
                            <div class="item-name"><span>PHÒNG NGỦ THOẢI MÁI</span></div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-modal="#login-modal4" href="javascript:void(0);">
                        <div class="item-img">
                            <img src="assets/images/img5.jpg" alt="" />
                            <div class="item-name"><span>KHÔNG GIAN BẾP ẤM CÚNG</span></div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a data-modal="#login-modal4" href="javascript:void(0);">
                        <div class="item-img">
                            <img src="assets/images/img6.jpg" alt="" />
                            <div class="item-name"><span>PHÒNG KHÁCH SANG TRỌNG</span></div>
                        </div>
                    </a>
                </div>
                 <div class="item">
                    <a href="javascript:void(0);">
                        <div class="item-img">
                            <img src="assets/images/img7.jpg" alt="" />
                            <div class="item-name"><span>PHÒNG ĂN HÀI HÒA</span></div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a href="javascript:void(0);">
                        <div class="item-img">
                            <img src="assets/images/img8.jpg" alt="" />
                            <div class="item-name"><span>KHU VUI CHƠI TRẺ EM</span></div>
                        </div>
                    </a>
                </div>
                <div class="item">
                    <a href="javascript:void(0);">
                        <div class="item-img">
                            <img src="assets/images/img9.jpg" alt="" />
                            <div class="item-name"><span>HỒ BƠI - GYM - SPA</span></div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div id="login-modal3" class="modal" style="display: none;">
        <div class="sliderGallery gallery-slider">
            <div class="slider-for">
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img2-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img3-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img4-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img5-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img6-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img7-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery-smalls">
                <div class="slider-nav">
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img2-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img3-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img4-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img5-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img6-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img7-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="login-modal4" class="modal" style="display: none;">
        <div class="sliderGallery gallery-slider">
            <div class="slider-for">
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img2-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img3-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img4-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img5-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img6-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img7-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery-smalls">
                <div class="slider-nav">
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img2-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img3-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img4-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img5-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img6-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img7-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="login-modal5" class="modal" style="display: none;">
        <div class="sliderGallery gallery-slider">
            <div class="slider-for">
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img3-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img4-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img5-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img6-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img7-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
                <div class="slider-big">
                    <div class="gallery-group">
                        <div class="gallery-img">
                            <img src="assets/images/img1-big.jpg" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="gallery-smalls">
                <div class="slider-nav">
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img3-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img4-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img5-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img6-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img7-small.jpg" />
                            </div>
                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="gallery-small">
                            <div class="small-box">
                                <img src="assets/images/img1-small.jpg" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



