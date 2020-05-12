<%@ Page Title="首页" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="BodyContent1" ContentPlaceHolderID="head" runat="server">
    <!-- 背景 -->
    <div class="layui-carousel" id="banner">
        <div carousel-item>
            <div>
                <img src="res/static/img/banner1.jpg">
                <div class="panel">
                    <p class="title">Welcome</p>
                </div>
            </div>
            <div>
                <img src="res/static/img/banner2.jpg">
            </div>
        </div>
    </div>
</asp:Content>
