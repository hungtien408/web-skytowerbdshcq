<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tong-quan.aspx.cs" Inherits="tong_quan" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="overview-main">
                <asp:ListView ID="lstTongQuan" runat="server" DataSourceID="odsTongQuan"
                    EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="title-all">
                            <h1><%# Eval("ProductName") %></h1>
                        </div>
                        <div class="overview-more">
                            <div class="overview-param">
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
                                <div class="view-more">
                                    <ul>
                                        <li><span class="view-title">Mật độ xây dựng:</span><span><%# Eval("MatDoXayDung") %></span></li>
                                        <li><span class="view-title">Không gian xanh:</span><span><%# Eval("KhongGianXanh") %> m<sup>2</sup></span></li>
                                        <li><span class="view-title">Diện tích sàn xây dựng:</span><span><%# Eval("DienTichXayDung") %> m<sup>2</sup></span></li>
                                        <li><span class="view-title">Không gian sinh hoạt:</span><span><%# Eval("KhongGianSinhHoat") %> m<sup>2</sup> (gồm diện tích đất công viên, hạ tầng kỹ thuật, giao thông...)</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="overview-img">
                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                    visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                    runat="server" />
                            </div>
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
                <div class="overview-content">
                    <asp:ListView ID="lstTongQuan2" runat="server" DataSourceID="odsTongQuan2"
                        EnableModelValidation="True">
                        <ItemTemplate>
                            <div class="overview-box">
                                <div class="over-img">
                                    <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>'
                                        visible='<%# string.IsNullOrEmpty( Eval("ImageName").ToString()) ? false : true %>'
                                        runat="server" />
                                </div>
                                <div class="over-content">
                                    <h1><%# Eval("ProductName") %></h1>
                                    <div class="description mCustomScrollbar content">
                                        <%# Eval("Content") %>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                    <asp:ObjectDataSource ID="odsTongQuan2" runat="server" SelectMethod="ProductSelectAll"
                        TypeName="TLLib.Product">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="StartRowIndex" Type="String" />
                            <asp:Parameter Name="EndRowIndex" Type="String" />
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
        </div>
    </div>
    <uc1:xemnhamau runat="server" ID="xemnhamau" />
</asp:Content>

