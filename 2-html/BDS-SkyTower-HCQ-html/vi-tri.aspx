<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="vi-tri.aspx.cs" Inherits="vi_tri" %>

<%@ Register Src="~/uc/xem-nha-mau.ascx" TagPrefix="uc1" TagName="xemnhamau" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>HCQ-SkyTower</title>
    <meta name="description" content="HCQ-SkyTower" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <div class="location-main">
                <div class="title-all">
                    <h1>VỊ TRÍ ĐẮC ĐỊA</h1>
                </div>
                <div class="description">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                </div>
                <div class="location-content">
                    <div class="locaimg">
                        <img src="assets/images/map1.jpg" alt="" /></div>
                    <div class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis no strud exercitation ullamco onsectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru dexercitation ullamco. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua eiusm odtte mpor incididunt ut  </div>
                    <div class="loca-list">
                        <ul>
                            <li><span>
                                <img src="assets/images/icon7.png" alt=""></span> Sân bay Tân Sơn Nhất  - 500m</li>
                            <li><span>
                                <img src="assets/images/icon8.png" alt=""></span> Chợ Hòa Mỹ - 1,5km</li>
                            <li><span>
                                <img src="assets/images/icon9.png" alt=""></span> Bến xe trung tâm - 1km</li>
                            <li><span>
                                <img src="assets/images/icon10.png" alt=""></span> Bệnh viện GTVT - 500m</li>
                            <li><span>
                                <img src="assets/images/icon11.png" alt=""></span> Trường Trần Quốc Toản - 1km</li>
                            <li><span>
                                <img src="assets/images/icon12.png" alt=""></span> Siêu thị CoopMart - 1km</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <uc1:xemnhamau runat="server" ID="xemnhamau" />
</asp:Content>

