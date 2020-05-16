import 'package:alltv/model/live_room.dart';
import 'package:alltv/pages/homePage.dart';
import 'package:alltv/pages/live_page.dart';
import 'package:alltv/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

// 闪屏
Handler splashPageHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return SplashPage();
  },
);

// 正常路由跳转 homepage
Handler homePageHanderl = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return AllTVHome();
});

// 路由传参
Handler livePageHanderl = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  LiveRoom liveRoom = new LiveRoom();
  liveRoom.roomId = params['roomId'].first;
  liveRoom.com = params['com'].first;
  liveRoom.roomThumb = params['roomThumb'].first;
  liveRoom.avatar = params['avatar'].first;
  liveRoom.roomName = params['roomName'].first;
  liveRoom.ownerName = params['ownerName'].first;
  liveRoom.cateName = params['cateName'].first;
  return LivePage(room: liveRoom);
});

// // 登陆页面
// Handler loginHanderl = Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//         return Login();
//     }
// );
