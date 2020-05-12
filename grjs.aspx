<%@ Page Title="个人介绍" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="grjs.aspx.cs" Inherits="grjs" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- 背景 -->
    <div class="layui-carousel" id="banner">
        <div carousel-item>
            <div>
                <img src="res/static/img/bz4.jpg">
                <div class="panel">
                    <p class="title"></p>
                </div>
            </div>
        </div>
    </div>

    <!-- 个人信息 -->

    <asp:TextBox ID="TextBox1" runat="server" Style="z-index: 100; left: 156px; position: absolute; top: 163px; right: 1225px; height: 23px;"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Style="z-index: 101; left: 105px; position: absolute; top: 129px"
        Text="学 号"></asp:Label>

    <asp:Label ID="Label2" runat="server" Style="z-index: 102; left: 105px; position: absolute; top: 167px"
        Text="姓 名"></asp:Label>
    <asp:Label ID="Label3" runat="server" Style="z-index: 103; left: 105px; position: absolute; top: 208px"
        Text="身 份"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Style="z-index: 104; left: 156px; position: absolute; top: 123px; height: 23px; right: 1269px;"
        OnTextChanged="TextBox2_TextChanged1"></asp:TextBox>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
        Style="z-index: 105; left: 156px; position: absolute; top: 208px">
        <asp:ListItem>&nbsp;学 生&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
        <asp:ListItem>&nbsp;老 师&nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="Label4" runat="server" Style="z-index: 106; left: 105px; position: absolute; top: 247px"
        Text="学 校"></asp:Label>

    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
        Style="z-index: 107; left: 156px; position: absolute; top: 244px; height: 23px;" Width="165px">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Style="z-index: 107; left: 156px; position: absolute; top: 292px; height: 23px;" Width="165px"
        OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Style="z-index: 107; left: 156px; position: absolute; top: 337px; height: 23px;" Width="165px">
    </asp:DropDownList>

    <asp:Label ID="Label5" runat="server" Style="z-index: 108; left: 105px; position: absolute; top: 295px"
        Text="学 院"></asp:Label>
    <asp:Label ID="Label11" runat="server" Style="z-index: 108; left: 105px; position: absolute; top: 339px"
        Text="专 业"></asp:Label>

    <asp:Label ID="Label6" runat="server" Style="z-index: 110; left: 105px; position: absolute; top: 390px; bottom: 382px;"
        Text="成 绩"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Style="z-index: 111; left: 157px; position: absolute; top: 384px; height: 23px; right: 1223px;"></asp:TextBox>

    <asp:Label ID="Label8" runat="server" Style="z-index: 112; left: 105px; position: absolute; top: 436px"
        Text="喜欢的音乐"></asp:Label>

    <asp:ListBox ID="ListBox1" runat="server" Style="z-index: 113; left: 200px; position: absolute; top: 435px; height: 160px;"
        Width="151px" SelectionMode="Multiple">
        <asp:ListItem>马頔-傲寒</asp:ListItem>
        <asp:ListItem>李健-向往</asp:ListItem>
        <asp:ListItem>许巍-曾经的你</asp:ListItem>
        <asp:ListItem>范玮琪-是非题</asp:ListItem>
        <asp:ListItem>胡夏-同桌的你</asp:ListItem>
        <asp:ListItem>Beyond-光辉岁月</asp:ListItem>
        <asp:ListItem>陈楚生-那个远方</asp:ListItem>
        <asp:ListItem>陈奕迅-明年今日</asp:ListItem>
        <asp:ListItem>林俊杰-伟大的渺小</asp:ListItem>
        <asp:ListItem>王力宏-需要人陪</asp:ListItem>
    </asp:ListBox>
    <asp:ListBox ID="ListBox2" runat="server" Style="z-index: 114; left: 431px; position: absolute; top: 436px; right: 919px; height: 160px;"
        Width="154px"></asp:ListBox>
    <asp:Button ID="Button1" runat="server" Style="z-index: 115; left: 373px; position: absolute; top: 557px"
        Text="＜＜" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Style="z-index: 116; left: 373px; position: absolute; top: 519px"
        Text="＜" Width="39px" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Style="z-index: 117; left: 372px; position: absolute; top: 445px"
        Text="＞" Width="41px" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Style="z-index: 118; left: 372px; position: absolute; top: 484px"
        Text="＞＞" OnClick="Button4_Click" />

    <asp:Button ID="Button5" runat="server" Style="z-index: 119; left: 350px; position: absolute; top: 637px; height: 36px; width: 90px;"
        Text="确  定" OnClick="Button5_Click" BackColor="#30ADFA" Font-Bold="True" Font-Italic="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="White" BorderColor="#66CCFF" />
    <asp:Label ID="Label7" runat="server" Style="z-index: 120; left: 631px; position: absolute; top: 216px" BorderColor="#CCE2F0" BorderStyle="Solid" ForeColor="#666666"></asp:Label>

    <asp:Label ID="Label9" runat="server" BackColor="Transparent" BorderColor="Transparent"
        ForeColor="Red" Style="z-index: 122; left: 344px; position: absolute; top: 128px; bottom: 649px;"></asp:Label>
    <asp:Label ID="Label10" runat="server" BackColor="Transparent" BorderColor="Transparent"
        ForeColor="Red" Style="z-index: 122; left: 344px; position: absolute; top: 168px; bottom: 649px;"></asp:Label>


</asp:Content>
