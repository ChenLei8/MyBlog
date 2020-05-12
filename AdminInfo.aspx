<%@ Page Title="信息管理" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminInfo.aspx.cs" Inherits="AdminInfo" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*表格样式*/
        table {
            width: 90%;
            background: #ccc;
            margin: 10px auto;
            border-collapse: collapse; /*border-collapse:collapse合并内外边距(去除表格单元格默认的2个像素内外边距*/
        }

        th, td {
            height: 25px;
            line-height: 25px;
            text-align: center;
            border: 1px solid #ccc;
        }

        th {
            background: #eee;
            font-weight: normal;
        }

        tr {
            background: #fff;
        }

            tr:hover {
                background: #cc0;
            }

        td a {
            color: #06f;
            text-decoration: none;
        }

            td a:hover {
                color: #06f;
                text-decoration: underline;
            }
    </style>

</asp:Content>

<asp:Content ID="BodyContent1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--背景--%>
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
    <%--信息管理--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionDB %>"
        SelectCommand="SELECT [UId], [Sex], [Age], [No], [Major], [Class], [NativePlace], [Address], [Phone] FROM [UserTable]"></asp:SqlDataSource>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <table border="1" style="left: 60px; position: absolute; top: 360px">
                <tr>
                    <td>用户名</td>
                    <td>性别</td>
                    <td>年龄</td>
                    <td>学号</td>
                    <td>专业</td>
                    <td>班级</td>
                    <td>籍贯</td>
                    <td>住址</td>
                    <td>手机</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#DataBinder.Eval(Container.DataItem,"UId") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"Sex") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"Age") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"No") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"Major") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"Class") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"NativePlace") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"Address") %></td>
                <td><%#DataBinder.Eval(Container.DataItem,"Phone") %></td>

            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>

    </asp:Repeater>

</asp:Content>
