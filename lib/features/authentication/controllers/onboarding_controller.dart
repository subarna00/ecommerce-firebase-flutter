import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final  pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator({required int index}){
    currentPageIndex.value = index;
  }
  void dotNavigationClicked({required int index}){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }
  void nextPage(){
    if(currentPageIndex.value == 2){
      // Get.to(() => const LoginScreen());
      print("Login Screen");
    }
    if(currentPageIndex.value < 2){
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }
  void skipPage(){
     currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}