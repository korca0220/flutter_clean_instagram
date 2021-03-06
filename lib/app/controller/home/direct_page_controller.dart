import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DirectPageController extends GetxController
    with SingleGetTickerProviderMixin {
  final List<Tab> tabs = <Tab>[
    Tab(text: '채팅'),
    Tab(text: '룸스'),
  ];

  TabController controller;
  PageController pageController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
    controller = TabController(length: tabs.length, vsync: this);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
    controller.dispose();
  }
}
