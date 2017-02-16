<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tien-ich.aspx.cs" Inherits="tien_ich" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="utilities-main">
                <div class="title-all">
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
                <div class="uti-main">
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
    <uc1:xemnhamau runat="server" ID="xemnhamau" />
</asp:Content>

