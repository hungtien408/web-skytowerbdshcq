<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="tin-tuc-chi-tiet.aspx.cs" Inherits="tin_tuc_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mar-50">
        <div class="container">
            <asp:ListView ID="lstNewDetails" runat="server" DataSourceID="odsNewDetails"
                EnableModelValidation="True">
                <ItemTemplate>
                    <div class="news-main">
                        <div class="title-all">
                            <h1><%# Eval("ProductCategoryName") %></h1>
                        </div>
                        <div class="wrapper-news">
                            <h1><%# Eval("ProductName") %></h1>
                            <div class="newscontent">
                                <%# Eval("Content") %>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNewDetails" runat="server" SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="tt" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>

