<%@ Page Title="注册" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <link type="text/css" rel="stylesheet" href="Content/zhuce.css" />
    <script type="text/javascript" src="Scripts/zhuce.js"></script>
    <script type="text/javascript" src="Scripts/jquery-1.11.1.min.js"></script>

    <style>
        .label {
            color: red;
            font-size: 12px;
            font-family: 'Lucida Console';
        }

        input.Tb {
            border-radius: 5px;
        }

        .user_name {
            width: 240px;
            height: 38px;
            line-height: 38px;
            border: 1px solid #000;
            background: url(login_img_03.png) no-repeat left center;
            padding-left: 30px;
        }

            .user_name input {
                width: 230px;
                height: 36px;
                border: 1px solid #fff;
                color: #666;
            }

        .password {
            width: 240px;
            height: 38px;
            line-height: 38px;
            border: 1px solid #dfe1e8;
            background: url(login_img_09.png) no-repeat left center;
            padding-left: 30px;
        }

            .password input {
                width: 230px;
                height: 36px;
                border: 1px solid #000;
                color: #666;
            }
    </style>

</asp:Content>

<asp:Content runat="server" ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1">

    <div class="main">
        <div class="main0">
            <div class="main_left">
                <img src="images/zhuce-image-3.png" class="theimg" />
                <img src="images/zhuce-image-2.png" class="secimg" />
                <img src="images/zhuce-image-1.png" class="firimg" />
            </div>
            <div class="main_right">
                <div class="main_r_up">
                    <img src="images/user.png" />
                    <div class="pp">欢迎注册</div>
                </div>
                <div class="sub">
                    <p>已经注册？<a href="Login.aspx"><span class="blue">请登录</span></a></p>
                </div>

                <div class="txt txt0">
                    <span style="letter-spacing: 6px;"></span>
                </div>

                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>


                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用 户 名 ：<asp:TextBox runat="server" ID="rUserNameText" Height="40px"
                    Width="270px" CssClass="Tb" placeholder="    请输入用户名"></asp:TextBox>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="rUserNameText"
                            ErrorMessage="*" OnServerValidate="CustomValidator1_ServerValidate">
                        </asp:CustomValidator>
                    </ContentTemplate>

                </asp:UpdatePanel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录密码：<asp:TextBox runat="server" ID="rPsdText" TextMode="Password"
                    Height="40px" Width="270px" CssClass="Tb" placeholder="    请输入密码"></asp:TextBox>
                <br />
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="rPsdText"
                            ErrorMessage="*" OnServerValidate="CustomValidator2_ServerValidate">
                        </asp:CustomValidator>
                    </ContentTemplate>

                </asp:UpdatePanel>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重复密码：<asp:TextBox runat="server" ID="rrPsdText" TextMode="Password"
                    Height="40px" Width="270px" CssClass="Tb" placeholder="    请再次输入密码"></asp:TextBox>
                <br />
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="rrPsdText"
                            ErrorMessage="*" OnServerValidate="CustomValidator3_ServerValidate">
                        </asp:CustomValidator>
                    </ContentTemplate>

                </asp:UpdatePanel>

                <br />
                <table>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked="true" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </td>
                        <td>
                            <span>同意</span>
                            <asp:LinkButton runat="server" Text="服务条款" ID="ckItem" OnClick="ckItem_Click" ForeColor="#996600"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnRegister" runat="server" Height="50px" Text="注    册" Width="270px"
                    OnClick="BtnRegister_Click" BackColor="#30ADFA" Font-Size="Large" ForeColor="White" BorderColor="#66CCFF" />

            </div>
        </div>
    </div>

</asp:Content>

<asp:Content runat="server" ID="BodyContent2" ContentPlaceHolderID="ContentPlaceHolder2">
    <script type="text/javascript">
        function watermark(id, value) {
            var obj = document.getElementById(id);
            var isPsdMode = false;
            if (obj.type == "password") {
                obj.type = "text";
                isPsdMode = true;
            }
            obj.value = value;
            obj.style.color = "Gray";
            //获取焦点事件  
            obj.onfocus = function () {

                obj.style.color = "Black";
                if (isPsdMode) {
                    obj.type = "password";
                }
                if (this.value == value) {
                    this.value = '';
                }
            };
            //失去焦点事件  
            obj.onblur = function () {
                if (this.value == "") {
                    if (isPsdMode) {
                        obj.type = "text";
                    }
                    this.value = value;
                    obj.style.color = "Gray";
                } else {
                    obj.style.color = "Black";
                }
            };
        }
        window.onload = function () {
            var arr = [{
                'id': 'rUserNameText',
                'desc': '用户名'
            }, {
                'id': 'rPsdText',
                'desc': '密码'
            }, {
                'id': 'rrPsdText',
                'desc': '确认密码'
            }];
            for (var i = 0; i < arr.length; i++) {
                watermark(arr[i].id, arr[i].desc);
            }
        };
    </script>
</asp:Content>
