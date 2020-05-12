<%@ Page Title="相册" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="album.aspx.cs" Inherits="album" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style>
        #header {
            height: 30px;
            text-align: center;
            background-color: lightblue;
            padding: 100px 10px 10px 10px;
        }

        .navigationBtn {
            text-decoration: none;
        }

        #OtherBtn {
            margin-right: 75px;
        }

        #btnToReg {
            margin-right: 10px;
        }

        .linkBtn {
            text-decoration: none;
            padding: 3px 7px;
            border: solid 1px;
            border-radius: 2px;
        }

        #logo {
            margin-right: 200px;
        }

        #body {
            text-align: center;
            border-radius: 2px;
            padding: 5px 10px;
            /*background-color: #4bc3e552;*/
            background-image: linear-gradient(#4bc3e552, #e5a891a3);
        }

        .ImgDiv {
            float: left;
            text-align: center;
            width: 48%;
            max-height: 50%;
            margin: 5px;
        }

        .Img {
            z-index: 102;
            left: 20px;
            top: 49px;
            width: 330px;
            margin: 26px;
        }

        #bottom {
            margin-top: 50px;
            margin-bottom: 10px;
            background-color: black;
            padding: 15px;
            text-align: center;
        }

        .useraccess {
            color: black;
        }

        .clear {
            clear: both;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="header">
        <asp:Label runat="server" Font-Size="Large" Font-Bold="false" ForeColor="#009688" ID="logo">杭州风光&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>

        <asp:LinkButton ID="AllBtn" runat="server" OnClick="AllBtn_Click" CssClass="navigationBtn">全部</asp:LinkButton>
        &nbsp;  &nbsp;  &nbsp;
              
        <asp:LinkButton ID="SenseBtn" runat="server" OnClick="SenseBtn_Click" CssClass="navigationBtn">风景</asp:LinkButton>
        &nbsp;  &nbsp;  &nbsp;
              
        <asp:LinkButton ID="LifeBtn" runat="server" OnClick="LifeBtn_Click" CssClass="navigationBtn">生活</asp:LinkButton>
        &nbsp;  &nbsp;  &nbsp;
              
        <asp:LinkButton ID="PersonBtn" runat="server" OnClick="PersonBtn_Click" CssClass="navigationBtn">人物</asp:LinkButton>
        &nbsp;  &nbsp;  &nbsp;
              
        <asp:LinkButton ID="AnimeBtn" runat="server" OnClick="AnimeBtn_Click" CssClass="navigationBtn">插画</asp:LinkButton>
        &nbsp;  &nbsp;  &nbsp;
              
        <asp:LinkButton ID="ImageBtn" runat="server" OnClick="ImageBtn_Click" CssClass="navigationBtn">建筑</asp:LinkButton>
        &nbsp;  &nbsp;  &nbsp;
              
        <asp:LinkButton ID="OtherBtn" runat="server" OnClick="OtherBtn_Click" CssClass="navigationBtn">其它</asp:LinkButton>
        &nbsp; &nbsp;
                                      
        <span>照片数量:</span>
        <asp:Label runat="server" ID="ShowNum" Width="30px"></asp:Label>

        &nbsp; &nbsp;
              
        <asp:LinkButton runat="server" OnClick="Unnamed1_Click" ID="btnToLog" CssClass="linkBtn" Text="登录"></asp:LinkButton>
        &nbsp; 
              
        <asp:LinkButton runat="server" OnClick="Unnamed2_Click" ID="btnToReg" CssClass="linkBtn" Text="注册"></asp:LinkButton>
        &nbsp;
                 
    </div>

    <div id="body">
        <div class="ImgDiv">
            <asp:Image ID="Image1" runat="server" CssClass="Img" />
        </div>
        <div class="ImgDiv">
            <asp:Image ID="Image2" runat="server" CssClass="Img" />
        </div>
        <div class="clear"></div>
        <div class="ImgDiv">
            <asp:Image ID="Image3" runat="server" CssClass="Img" />
        </div>

        <div class="ImgDiv">
            <asp:Image ID="Image4" runat="server" CssClass="Img" />
        </div>
        <div class="clear"></div>
        <div class="ImgDiv">
            <asp:Image ID="Image5" runat="server" CssClass="Img" />
        </div>
        <div class="ImgDiv">
            <asp:Image ID="Image6" runat="server" CssClass="Img" />
        </div>
        <div class="clear"></div>
        <div id="Index" style="text-align: center">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">上一页</asp:LinkButton>
            <span>&nbsp;&nbsp;</span>
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">下一页</asp:LinkButton>
        </div>
    </div>

</asp:Content>
