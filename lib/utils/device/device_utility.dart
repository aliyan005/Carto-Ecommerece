// import 'dart:ffi';
import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';

class EdeviceUtils{
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setstatusBarColor(Color color) async{
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static bool isLandscapeOrintation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  static bool isProtraitOrintation(BuildContext context){
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static getScreenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static getPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomNavbarHeight(){
    return kBottomNavigationBarHeight;
 }

 static double getAppBarHeight(){
  return kToolbarHeight;
 }

 static getKeyBoardHeight(){
  final viewInsets = MediaQuery.of(Get.context!).viewInsets;
  return viewInsets.bottom;
 }

 static gisKeyBoardVisible(){
  final viewInsets = MediaQuery.of(Get.context!).viewInsets;
  return viewInsets.bottom > 0;
 }

 static Future<bool> isPhysicalDevice() async {
  return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
 }

 static void vibrate(Duration duration){
  HapticFeedback.vibrate();
  Future.delayed(duration, () => HapticFeedback.vibrate());
 }

 static Future<void> setPreferredOrientation(List<DeviceOrientation> orientations) async{
  await SystemChrome.setPreferredOrientations(orientations);
 }

 static void hideStatusBar(){
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
 }

 static void showStatusBar(){
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
 }

 static Future<bool> hasInternetConnection() async {
  try{
    final result  = await InternetAddress.lookup('example.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  }on SocketException catch (_) {
    return false;

  }
 }

 static bool isIOS(){
  return Platform.isIOS;
 }

 static bool isAndroid(){
  return Platform.isAndroid;
 }

 static Future<void> launchUrlString(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not Launch $url';
    }
  }
}