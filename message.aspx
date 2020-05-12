<%@ Page Title="留言板" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            text-align: center;
            margin: 0 auto;
        }

        .style2 {
            height: 36px;
            text-align: center;
            font-size: 18px;
        }

        .style3 {
            height: 20px;
            width: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- 背景 -->
    <div>
        <img src="res/static/img/liuyan.jpg" style="margin: 0 auto; width: 100%;">
    </div>
    <div style="background-image: url('/res/static/img/bz2.jpg');">
        <div style="text-align: center; margin-top: auto; height: 30px; font-size: 18px;">
            查看留言
        </div>
        <table class="style1">
            <tr>
                <td class="style3">&nbsp;</td>
                <td colspan="3">
                    <asp:GridView ID="gvMessage" runat="server" Width="436px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="4">发表留言</td>
            </tr>
            <tr>
                <td class="style3">留言者:</td>
                <td colspan="3">
                    <asp:Label ID="lblUser" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td colspan="3">
                    <asp:TextBox ID="txtMessage" runat="server" Height="141px" TextMode="MultiLine"
                        Width="439px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" ForeColor="White" BackColor="#6699FF" Height="29px" Width="60px" BorderColor="#99CCFF" />
                </td>
            </tr>
            <tr>
                <td class="style3">&nbsp;</td>
                <td colspan="3">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
