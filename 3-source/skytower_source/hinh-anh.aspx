<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="hinh-anh.aspx.cs" Inherits="hinh_anh" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
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
    <uc1:xemnhamau runat="server" ID="xemnhamau" />
</asp:Content>

