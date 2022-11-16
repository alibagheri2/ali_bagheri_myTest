import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBar_controller extends GetxController with GetSingleTickerProviderStateMixin{
 late TabController tabController;
 final List<Tab> myTabs = <Tab>[
   Tab(text: 'صدور بیمه بدنه',),
   Tab(text: 'بازدید بدنه',),
   Tab(text: 'اعلام خسارت',)
 ];
  @override
  void onInit() {
    tabController=TabController(length: 3, vsync:this,initialIndex: 1);
    super.onInit();
  }
 @override
 void onClose() {
   tabController.dispose();
   super.onClose();
 }
}