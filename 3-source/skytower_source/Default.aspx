<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="banner">
        <div id="slider-banner" class="nivoSlider">
            <asp:ListView ID="lstBanner" runat="server" DataSourceID="odsBanner"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="slide">
                        <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>'
                            visible='<%# string.IsNullOrEmpty( Eval("FileName").ToString()) ? false : true %>'
                            runat="server" />
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsBanner" runat="server" SelectMethod="AdsBannerSelectAll"
                TypeName="TLLib.AdsBanner">
                <SelectParameters>
                    <asp:Parameter Name="StartRowIndex" Type="String" />
                    <asp:Parameter Name="EndRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="5" Name="AdsCategoryID" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="Website" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>

    <div class="clr"></div>
    <div class="overview-default">
        <div class="container">
            <asp:ListView ID="lstTongQuan" runat="server" DataSourceID="odsTongQuan"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="title-main">
                        <h1><%# Eval("ProductName") %></h1>
                    </div>
                    <div class="description"><%# Eval("Content") %></div>
                    <div class="overview-list">
                        <ul>
                            <li>
                                <div class="ov-img">
                                    <img src="assets/images/icon2.png" alt="" />
                                </div>
                                <div class="ov-param"><%# Eval("DienTichToanKhu") %></div>
                                <div class="ov-unit">Diện tích toàn khu(m<sup>2</sup>)</div>
                            </li>
                            <li>
                                <div class="ov-img">
                                    <img src="assets/images/icon3.png" alt="" />
                                </div>
                                <div class="ov-param"><%# Eval("SoCanHo") %></div>
                                <div class="ov-unit">Số căn hộ</div>
                            </li>
                            <li>
                                <div class="ov-img">
                                    <img src="assets/images/icon4.png" alt="" />
                                </div>
                                <div class="ov-param"><%# Eval("SoTang") %></div>
                                <div class="ov-unit">Số tầng</div>
                            </li>
                            <li>
                                <div class="ov-img">
                                    <img src="assets/images/icon5.png" alt="" />
                                </div>
                                <div class="ov-param"><%# Eval("Gia") %></div>
                                <div class="ov-unit">Giá từ (tỷ)</div>
                            </li>
                            <li>
                                <div class="ov-img">
                                    <img src="assets/images/icon6.png" alt="" />
                                </div>
                                <div class="ov-param"><%# Eval("DatCho") %></div>
                                <div class="ov-unit">Khách hàng đã đặt chổ</div>
                            </li>
                        </ul>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsTongQuan" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                    <asp:Parameter Name="ManufacturerID" Type="String" />
                    <asp:Parameter Name="OriginID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="InStock" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="IsBestSeller" Type="String" />
                    <asp:Parameter Name="IsSaleOff" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <div class="container">
        <div class="location-default">
            <asp:ListView ID="lstViTri" runat="server" DataSourceID="odsViTri"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="loca-text">
                        <h1><%# Eval("ProductName") %></h1>
                        <div class="description">
                            <%# Eval("Description") %>
                        </div>
                        <div class="loca-list">
                            <asp:HiddenField ID="hdnProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                            <asp:ListView ID="lstLocal" runat="server" DataSourceID="odsLocal"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <li><span>
                                        <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>'
                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                            runat="server" /></span> <%# Eval("Title") %></li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul>
                                        <li runat="server" id="itemPlaceholder"></li>
                                    </ul>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsLocal" runat="server" SelectMethod="ProductImageSelectAll"
                                TypeName="TLLib.ProductImage">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnProductID" Name="ProductID" PropertyName="Value" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                    <asp:Parameter Name="Priority" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                    </div>
                    <div class="loca-img">
                        <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                            runat="server" />
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsViTri" runat="server" SelectMethod="ProductSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                    <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                    <asp:Parameter Name="Keyword" Type="String" />
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="PriceFrom" Type="String" />
                    <asp:Parameter Name="PriceTo" Type="String" />
                    <asp:Parameter DefaultValue="4" Name="CategoryID" Type="String" />
                    <asp:Parameter Name="ManufacturerID" Type="String" />
                    <asp:Parameter Name="OriginID" Type="String" />
                    <asp:Parameter Name="Tag" Type="String" />
                    <asp:Parameter Name="InStock" Type="String" />
                    <asp:Parameter Name="IsHot" Type="String" />
                    <asp:Parameter Name="IsNew" Type="String" />
                    <asp:Parameter Name="IsBestSeller" Type="String" />
                    <asp:Parameter Name="IsSaleOff" Type="String" />
                    <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                    <asp:Parameter Name="FromDate" Type="String" />
                    <asp:Parameter Name="ToDate" Type="String" />
                    <asp:Parameter Name="Priority" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    <div class="utilities-default">
        <div class="container">
            <div class="title-main">
                <h1>TIỆN ÍCH HOÀN HẢO</h1>
            </div>
            <asp:ListView ID="lstMoTaTienIch" runat="server" DataSourceID="odsMoTaTienIch"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="description"><%# Eval("Description") %></div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsMoTaTienIch" runat="server" SelectMethod="ProductCategorySelectOne" TypeName="TLLib.ProductCategory">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5" Name="ProductCategoryID" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <div id="sliderUtilities" class="owl-carousel uti-main">
                <asp:ListView ID="lstTienIch" runat="server" DataSourceID="odsTienIch"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <div class="item-img">
                                <a data-modal='<%# "#login-modal" + Eval("ProductID") %>' href="javascript:void(0);">
                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" /></a>
                                <div class="item-icon">+</div>
                            </div>
                            <div class="item-name"><%# Eval("ProductName") %></div>
                            <div class="description"><%# Eval("Content") %></div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsTienIch" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PriceFrom" Type="String" />
                        <asp:Parameter Name="PriceTo" Type="String" />
                        <asp:Parameter DefaultValue="5" Name="CategoryID" Type="String" />
                        <asp:Parameter Name="ManufacturerID" Type="String" />
                        <asp:Parameter Name="OriginID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="InStock" Type="String" />
                        <asp:Parameter Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="IsBestSeller" Type="String" />
                        <asp:Parameter Name="IsSaleOff" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
    <asp:ListView ID="lstTienIch2" runat="server" DataSourceID="odsTienIch"
        EnableModelValidation="True">
        <ItemTemplate>
            <div id='<%# "login-modal" + Eval("ProductID") %>' class="modal" style="display: none;">
                <div class="sliderGallery gallery-slider">
                    <asp:HiddenField ID="hdnProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                    <div class="slider-for">
                        <asp:ListView ID="lstTienIchImageBig" runat="server" DataSourceID="odsTienIchAlbum"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slider-big">
                                    <div class="gallery-group">
                                        <div class="gallery-img">
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>'
                                                visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                runat="server" />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsTienIchAlbum" runat="server" SelectMethod="ProductImageSelectAll"
                            TypeName="TLLib.ProductImage">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="hdnProductID" Name="ProductID" PropertyName="Value" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="gallery-smalls">
                        <div class="slider-nav">
                            <asp:ListView ID="lstTienIchImageSmall" runat="server" DataSourceID="odsTienIchAlbum"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="slider-small">
                                        <div class="gallery-small">
                                            <div class="small-box">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/thumbs/" + Eval("ImageName") %>'
                                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                    runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <div class="container">
        <div class="picture-default">
            <div class="title-all">
                <h1>HÌNH ẢNH DỰ ÁN</h1>
            </div>
            <div class="pic-main">
                <asp:ListView ID="lstPhotoAlbumCategory" runat="server" DataSourceID="odsPhotoAlbumCategory"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="item">
                            <a data-modal='<%# "#login-modal" + Eval("PhotoAlbumCategoryID")%>' href="javascript:void(0);">
                                <div class="item-img">
                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbumcategory/" + Eval("ImageName") %>' runat="server"
                                        visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' />
                                    <div class="item-name"><span><%# Eval("PhotoAlbumCategoryName")%></span></div>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsPhotoAlbumCategory" runat="server" SelectMethod="PhotoAlbumCategorySelectAll"
                    TypeName="TLLib.PhotoAlbumCategory">
                    <SelectParameters>
                        <asp:Parameter Name="PhotoAlbumCategoryName" Type="String" />
                        <asp:Parameter Name="IsShowOnMenu" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
    <asp:ListView ID="lstPhotoAlbumCategory2" runat="server" DataSourceID="odsPhotoAlbumCategory"
        EnableModelValidation="True">
        <ItemTemplate>
            <div id='<%# "login-modal" + Eval("PhotoAlbumCategoryID")%>' class="modal" style="display: none;">
                <div class="sliderGallery gallery-slider">
                    <asp:HiddenField ID="hdnPhotoAlbumCategoryID" runat="server" Value='<%# Eval("PhotoAlbumCategoryID") %>' />
                    <div class="slider-for">
                        <asp:ListView ID="lstPhotoAlbumBig" runat="server" DataSourceID="odsPhotoAlbum"
                            EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slider-big">
                                    <div class="gallery-group">
                                        <div class="gallery-img">
                                            <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/" + Eval("ImageName") %>' runat="server" visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsPhotoAlbum" runat="server" SelectMethod="PhotoAlbumSelectAll" TypeName="TLLib.PhotoAlbum">
                            <SelectParameters>
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="Title" Type="String" />
                                <asp:Parameter Name="Descripttion" Type="String" />
                                <asp:ControlParameter ControlID="hdnPhotoAlbumCategoryID" Name="PhotoAlbumCategoryID" PropertyName="Value" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <div class="gallery-smalls">
                        <div class="slider-nav">
                            <asp:ListView ID="lstPhotoAlbumSmall" runat="server" DataSourceID="odsPhotoAlbum"
                                EnableModelValidation="True">
                                <ItemTemplate>
                                    <div class="slider-small">
                                        <div class="gallery-small">
                                            <div class="small-box">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/photoalbum/thumbs/" + Eval("ImageName") %>' runat="server" visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <span runat="server" id="itemPlaceholder" />
                                </LayoutTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>



