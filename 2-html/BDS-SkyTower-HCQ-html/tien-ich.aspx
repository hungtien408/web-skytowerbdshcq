<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tien-ich.aspx.cs" Inherits="tien_ich" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HCQ-SkyTower</title>
    <meta name="description" content="HCQ-SkyTower" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="utilities-main">
                <div class="title-all">
                    <h1>TIỆN ÍCH HOÀN HẢO</h1>
                </div>
                <div class="description">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                </div>
                <div class="uti-main">
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
                            <a href="javascript:void(0);">
                                <img src="assets/images/img13.jpg" alt="" /></a>
                            <div class="item-icon">+</div>
                        </div>
                        <div class="item-name">khu thể thao ngoài trời</div>
                        <div class="description">Với cơ sở vật chất hiện đại đáp ứng nhu cầu mua sắm, ăn uống, thư giãn, giải trí cho cư dân.</div>
                    </div>
                    <div class="item">
                        <div class="item-img">
                            <a href="javascript:void(0);">
                                <img src="assets/images/img14.jpg" alt="" /></a>
                            <div class="item-icon">+</div>
                        </div>
                        <div class="item-name">Mặt tiền sun tower</div>
                        <div class="description">Bảo vệ căn hộ 24/24, hệ thống thang máy điện tử thông minh rút ngắn thời gian đợi thang máy.</div>
                    </div>
                     <div class="item">
                        <div class="item-img">
                            <a href="javascript:void(0);">
                                <img src="assets/images/img15.jpg" alt="" /></a>
                            <div class="item-icon">+</div>
                        </div>
                        <div class="item-name">vườn hoa tiểu cảnh</div>
                        <div class="description">Với cơ sở vật chất hiện đại đáp ứng nhu cầu mua sắm, ăn uống, thư giãn, giải trí cho cư dân.</div>
                    </div>
                     <div class="item">
                        <div class="item-img">
                            <a href="javascript:void(0);">
                                <img src="assets/images/img16.jpg" alt="" /></a>
                            <div class="item-icon">+</div>
                        </div>
                        <div class="item-name">cafe - bar</div>
                        <div class="description">Với cơ sở vật chất hiện đại đáp ứng nhu cầu mua sắm, ăn uống, thư giãn, giải trí cho cư dân.</div>
                    </div>
                     <div class="item">
                        <div class="item-img">
                            <a href="javascript:void(0);">
                                <img src="assets/images/img17.jpg" alt="" /></a>
                            <div class="item-icon">+</div>
                        </div>
                        <div class="item-name">Hệ thống an ninh</div>
                        <div class="description">Bảo vệ căn hộ 24/24, hệ thống thang máy điện tử thông minh rút ngắn thời gian đợi thang máy.</div>
                    </div>
                    <div class="item">
                        <div class="item-img">
                            <a href="javascript:void(0);">
                                <img src="assets/images/img18.jpg" alt="" /></a>
                            <div class="item-icon">+</div>
                        </div>
                        <div class="item-name">hồ bơi, gym, spa</div>
                        <div class="description">Với cơ sở vật chất hiện đại đáp ứng nhu cầu mua sắm, ăn uống, thư giãn, giải trí cho cư dân.</div>
                    </div>
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
    <uc1:xemnhamau runat="server" ID="xemnhamau" />
</asp:Content>

