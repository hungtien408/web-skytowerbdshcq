<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc.aspx.cs" Inherits="tin_tuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="news-main">
                <div class="title-all">
                    <h1>TIN TỨC</h1>
                </div>
                <div class="news-tab">
                    <asp:ListView ID="lstNewCategory" runat="server" DataSourceID="odsNewCategory"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <li role="presentation"><a href='<%# "#tab" + Eval("ProductCategoryID") %>' data-toggle="tab"><%# Eval("ProductCategoryName") %></a></li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul class="nav nav-tabs" role="tablist">
                                <li runat="server" id="itemPlaceholder"></li>
                            </ul>
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsNewCategory" runat="server"
                        SelectMethod="ProductCategorySelectAll" TypeName="TLLib.ProductCategory">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="parentID" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                            <asp:Parameter Name="IsShowOnMenu" Type="String" />
                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </div>
                <div class="newstab-content">
                    <div class="tab-content">
                        <asp:ListView ID="lstNewCategory2" runat="server" DataSourceID="odsNewCategory"
                            EnableModelValidation="True" OnItemDataBound="lstNewCategory2_ItemDataBound">
                            <ItemTemplate>
                                <div role="tabpanel" class="tab-pane" id='<%# "tab" + Eval("ProductCategoryID") %>'>
                                    <asp:HiddenField ID="hdnProductCategoryID" runat="server" Value='<%# Eval("ProductCategoryID")%>' />
                                    <div class="news-hot">
                                        <asp:ListView ID="lstNewHot" runat="server" DataSourceID="odsNewHot"
                                            EnableModelValidation="True">
                                            <ItemTemplate>
                                                <div class="news-img">
                                                    <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                        <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                            runat="server" /></a>
                                                </div>
                                                <div class="news-content">
                                                    <div class="news-name">
                                                        <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a>
                                                    </div>
                                                    <div class="description mCustomScrollbar content"><%# Eval("Description") %></div>
                                                    <div class="view-all"><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>Chi tiết</a></div>
                                                </div>
                                            </ItemTemplate>
                                            <LayoutTemplate>
                                                <span runat="server" id="itemPlaceholder" />
                                            </LayoutTemplate>
                                        </asp:ListView>
                                        <asp:ObjectDataSource ID="odsNewHot" runat="server" SelectMethod="ProductSelectAll"
                                            TypeName="TLLib.Product">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="1" Name="StartRowIndex" Type="String" />
                                                <asp:Parameter DefaultValue="1" Name="EndRowIndex" Type="String" />
                                                <asp:Parameter Name="Keyword" Type="String" />
                                                <asp:Parameter Name="ProductName" Type="String" />
                                                <asp:Parameter Name="Description" Type="String" />
                                                <asp:Parameter Name="PriceFrom" Type="String" />
                                                <asp:Parameter Name="PriceTo" Type="String" />
                                                <asp:ControlParameter ControlID="hdnProductCategoryID" Name="CategoryID" PropertyName="Value" Type="String" />
                                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                                <asp:Parameter Name="OriginID" Type="String" />
                                                <asp:Parameter Name="Tag" Type="String" />
                                                <asp:Parameter Name="InStock" Type="String" />
                                                <asp:Parameter DefaultValue="True" Name="IsHot" Type="String" />
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
                                    <div class="clearfix"></div>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                            <div class="news-box">
                                                <asp:ListView ID="lstNews" runat="server" DataSourceID="odsNews"
                                                    EnableModelValidation="True">
                                                    <ItemTemplate>
                                                        <div class="item">
                                                            <div class="wrap-item">
                                                                <div class="item-img">
                                                                    <a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>
                                                                        <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                                                            visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                                                            runat="server" /></a>
                                                                </div>
                                                                <div class="item-name"><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></div>
                                                                <div class="description"><%# Eval("Description") %> </div>
                                                                <div class="item-view"><a href='<%# progressTitle(Eval("ProductName")) + "-tt-" + Eval("ProductID") + ".aspx" %>'>Chi tiết</a></div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                    <LayoutTemplate>
                                                        <span runat="server" id="itemPlaceholder" />
                                                    </LayoutTemplate>
                                                </asp:ListView>
                                                <asp:ObjectDataSource ID="odsNews" runat="server" SelectMethod="ProductSelectAll"
                                                    TypeName="TLLib.Product">
                                                    <SelectParameters>
                                                        <asp:Parameter Name="StartRowIndex" Type="String" />
                                                        <asp:Parameter Name="EndRowIndex" Type="String" />
                                                        <asp:Parameter Name="Keyword" Type="String" />
                                                        <asp:Parameter Name="ProductName" Type="String" />
                                                        <asp:Parameter Name="Description" Type="String" />
                                                        <asp:Parameter Name="PriceFrom" Type="String" />
                                                        <asp:Parameter Name="PriceTo" Type="String" />
                                                        <asp:ControlParameter ControlID="hdnProductCategoryID" Name="CategoryID" PropertyName="Value" Type="String" />
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
                                            <div class="pager">
                                                <asp:DataPager ID="DataPager1" runat="server" PageSize="6" PagedControlID="lstNews">
                                                    <Fields>

                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowNextPageButton="false"
                                                            ShowPreviousPageButton="true" ButtonCssClass="prev fa fa-caret-left" RenderDisabledButtonsAsLabels="true"
                                                            PreviousPageText="" />
                                                        <asp:NumericPagerField ButtonCount="5" NumericButtonCssClass="numer-paging"
                                                            CurrentPageLabelCssClass="current" />
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="false" ShowNextPageButton="true"
                                                            ShowPreviousPageButton="false" ButtonCssClass="next fa fa-caret-right" RenderDisabledButtonsAsLabels="true"
                                                            NextPageText="" />

                                                    </Fields>
                                                </asp:DataPager>
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
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
    </div>
</asp:Content>

