<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="vi-tri.aspx.cs" Inherits="vi_tri" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="location-main">
                <asp:ListView ID="lstViTri" runat="server" DataSourceID="odsViTri"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="title-all">
                            <h1><%# Eval("ProductName") %></h1>
                        </div>
                        <div class="description">
                            <%# Eval("Description") %>
                        </div>
                        <div class="location-content">
                            <%--<div class="locaimg">
                                <img src="assets/images/map1.jpg" alt="" />
                            </div>--%>
                            <div class="description"><%# Eval("Content") %></div>
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
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsViTri" runat="server" SelectMethod="ProductSelectAll"
                    TypeName="TLLib.Product">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
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
    </div>
    <uc1:xemnhamau runat="server" ID="xemnhamau" />
</asp:Content>

