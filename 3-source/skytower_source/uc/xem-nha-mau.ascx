<%@ Control Language="C#" AutoEventWireup="true" CodeFile="xem-nha-mau.ascx.cs" Inherits="uc_xem_nha_mau" %>
<div class="container">
    <div class="view-house">
        <h1><span>XEM NHÀ MẪU VÀ ƯU TIÊN CHỌN CĂN TRƯỚC</span></h1>
        <p>Liên hệ ngay để trở thành Khách hàng đầu tiên sở hữu căn hộ có vị trí đẹp tại SUN TOWER</p>
        <p>Đăng ký ngay hôm nay để có cơ hội CHỌN CĂN HỘ ĐẸP</p>

        <asp:ListView ID="lstHotline" runat="server" DataSourceID="odsLienHe"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="hotline-house">
                    Hotline: <span><%# Eval("Tag") %></span>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <span runat="server" id="itemPlaceholder" />
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsLienHe" runat="server" SelectMethod="ProductSelectAll"
            TypeName="TLLib.Product">
            <SelectParameters>
                <asp:Parameter Name="StartRowIndex" Type="String" />
                <asp:Parameter Name="EndRowIndex" Type="String" />
                <asp:Parameter Name="Keyword" Type="String" />
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="PriceFrom" Type="String" />
                <asp:Parameter Name="PriceTo" Type="String" />
                <asp:Parameter DefaultValue="10" Name="CategoryID" Type="String" />
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
        <div class="btn-house">
            <a href="dang-ky-tu-van.aspx">ĐĂNG KÝ NGAY</a>
        </div>
    </div>
</div>
