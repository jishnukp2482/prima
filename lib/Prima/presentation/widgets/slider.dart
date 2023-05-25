import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../manager/slideImg_Controller.dart';

// final List<Widget> bankAds = [
//   Image.asset('assets/images/bank_slide.jpg'),
//   Image.asset('assets/images/ad1.jpg'),
//   Image.asset('assets/images/ad2.jpg'),
//   Image.asset('assets/images/ad3.jpg'),
//   Image.asset('assets/images/ad4.jpg'),
// ];

// final List<Widget> sliders = bankAds.map((e) => Stack(
//   children: <Widget>[
//     Image.asset(e, fit: BoxFit.cover),
//   ],
// )).toList();
//

class SliderWidget extends StatelessWidget {
    const SliderWidget({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
     final controller = Get.find<ImgController>();
     return CarouselSlider(
      items: controller.imgSlide,
      options: CarouselOptions(
      initialPage: 0,
      enlargeCenterPage: true,
      autoPlayAnimationDuration: const Duration(
        milliseconds: 100
      ),
      scrollDirection: Axis.horizontal,
      // enlargeCenterPage: false,
      autoPlay: true,
      pauseAutoPlayOnTouch: true,
    ),
    );
  }
}
