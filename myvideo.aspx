﻿<%@ Page Title="视频" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="myvideo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/video-js.css" rel="stylesheet">
    <style>
        body {
            background-color: #19191900
        }

        .m {
            width: 720px;
            height: 400px;
            margin-left: auto;
            margin-right: auto;
            margin-top: auto;
            margin-bottom: 6px
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- 背景 -->
    <div>
        <img src="res/static/img/bz10.jpg" style="margin: 0 auto; width: 100%;">
    </div>
    <div class="m">
        <video id="my-video" class="video-js" controls preload="auto" width="720" height="400"
            poster="images/mx.jpg" data-setup="{}">
            <source src="video/仰望星空.mp4" type="video/mp4">
            <p class="vjs-no-js">
                To view this video please enable JavaScript, and consider upgrading to a web browser that
			  <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
            </p>
        </video>
        <script src="Scripts/video.min.js"></script>
        <script type="text/javascript">
            var myPlayer = videojs('my-video');
            videojs("my-video").ready(function () {
                var myPlayer = this;
                myPlayer.play();
            });
        </script>
    </div>
</asp:Content>
