<%@ Page Title="用户信息" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style>
        #LkBackToUserHome {
            text-decoration: none;
        }

        #showInfo {
            border: solid 1px;
            border-radius: 3px;
            height: 20px;
            padding: 10px;
        }

        .clear {
            clear: both;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- 背景 -->
    <div>
        <img src="res/static/img/bz7.jpg" style="margin: 0 auto; width: 100%;">
    </div>
    <div style="padding: 10px 10px 10px 80px; background-image: linear-gradient(#bce1e9, #e5a891a3);">

        <div style="margin: 20px; text-align: center;">
            <span>当前用户：</span>
            <asp:LinkButton ID="LkBackToUserHome" runat="server" Text="*" OnClick="LkBackToUserHome_Click" Font-Size="Small" Font-Bold="True"></asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Style="margin-top: 0px" Text="修改信息" BackColor="#3399FF" BorderColor="#6699FF" ForeColor="White" Width="78px" />

        </div>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" style="margin-left: 40%;">
            <ContentTemplate>
                <div id="showInfo" runat="server">
                    <div id="info" style="float: left">
                        <asp:Label runat="server" ID="SexLbl" Text="unknown"></asp:Label>
                        <br />
                        <br />

                        <asp:Label ID="AgeLbl" runat="server" Text="unknown"></asp:Label><span>岁</span>
                    </div>
                    <div id="ToChange" runat="server" style="float: left; margin-left: 150px">
                        性别：<span>男:</span>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="SexRadio" />
                        <span>女:</span>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="SexRadio" />
                        <br />
                        <br />

                        <span>年龄：</span><asp:TextBox runat="server" ID="AgeTb" Width="42px"></asp:TextBox>
                        <br />
                        <br />

                        <span>学号：</span><asp:TextBox runat="server" ID="NoTb" Width="150px"></asp:TextBox>
                        <br />
                        <br />

                        <span>专业：</span><asp:TextBox runat="server" ID="Major" Width="150px"></asp:TextBox>
                        <br />
                        <br />

                        <span>班级：</span><asp:TextBox runat="server" ID="ClassTb" Width="150px"></asp:TextBox>
                        <br />
                        <br />

                        <span>籍贯：</span><asp:TextBox runat="server" ID="NativePlace" Width="150px"></asp:TextBox>
                        <br />
                        <br />

                        <span>住址：</span><asp:TextBox runat="server" ID="Address" Width="150px"></asp:TextBox>
                        <br />
                        <br />

                        <span>手机：</span><asp:TextBox runat="server" ID="Phone" Width="150px"></asp:TextBox>
                        <br />
                        <br />

                        <asp:Button ID="Button1" runat="server" Text="保存修改" OnClick="Button1_Click" BackColor="#3399FF" BorderColor="#6699FF" ForeColor="White" Width="90px" />
                    </div>
                    <div class="clear"></div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div id="ToUploadImg" style="float: left; width: 24%; margin: 80px; padding-left: 20%;">
            &nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="添加相册" Font-Size="X-Large" ForeColor="#996600"></asp:Label>
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />

            <br />
            <asp:Label ID="Label1" runat="server" Text="" Style="color: Red"></asp:Label>
            <br />
            <span>选择标签:</span>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="1">
                <asp:ListItem Selected="True">风景</asp:ListItem>
                <asp:ListItem>生活</asp:ListItem>
                <asp:ListItem>人物</asp:ListItem>
                <asp:ListItem>插画</asp:ListItem>
                <asp:ListItem>建筑</asp:ListItem>
                <asp:ListItem>其它</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button4" runat="server" Text="上传" Width="48px" OnClick="Button4_Click" ForeColor="#333300" />
        </div>

        <div id="Preview" style="margin-left: 100px; padding: 136px 100px;">
            <asp:Image runat="server" ID="Image1" Style="z-index: 102; left: 20px; top: 49px" Width="360px" ForeColor="White" />

        </div>

        <div class="clear"></div>

    </div>
</asp:Content>
