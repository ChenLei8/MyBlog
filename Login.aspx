<%@ Page Title="登录" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Async="true" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="Content/login.css" />
    <script type="text/javascript" src="Scripts/jquery-1.11.1.min.js"></script>
</asp:Content>

<asp:Content ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main">
        <div class="main0">
            <div class="main_left">
                <img src="images/login-image-3.png" class="theimg" />
                <img src="images/login-image-2.png" class="secimg" />
                <img src="images/login-image-1.png" class="firimg" />
            </div>

            <div>
                <div>
                    <span id="spanuser"
                        style="position: relative; top: 250px; left: 730px; font-size: 18px;">用户名:</span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"
                        Style="position: relative; top: 250px; left: 770px" Height="30px" Width="240px"
                        placeholder="请输入注册手机号或用户名"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="登    录"
                        Style="position: relative; top: 430px; left: 515px" Width="260px" Height="40px"
                        OnClick="Button1_Click" BackColor="#30ADFA" Font-Size="Large" ForeColor="White" BorderColor="#66CCFF" />
                </div>

                <div>
                    <span id="spanpsd"
                        style="position: relative; top: 300px; left: 730px; font-size: 18px;">密&nbsp;&nbsp;&nbsp;&nbsp;码:</span>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"
                        Style="position: relative; top: 300px; left: 770px" Height="30px" Width="240px"
                        TextMode="Password" placeholder="请输入登录密码"></asp:TextBox>
                </div>


            </div>

            <div class="main_right">
                <div class="main_r_up">
                    <img src="images/user.png" />
                    <div class="pp">登录</div>
                </div>
                <div class="sub">
                    <p>还没有账号？<a href="Register.aspx"><span class="blue">立即注册</span></a></p>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
