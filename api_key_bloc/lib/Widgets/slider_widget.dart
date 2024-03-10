import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderWidget extends StatelessWidget {
  final List<String> imageAsset = [
    "assets/image/premium_photo-1672883551967-ab11316526b4.jpg",
    "assets/image/premium_photo-1672883552341-eaebc9240719.jpg",
    "assets/image/premium_photo-1672883552403-549dd85b01bd.jpg",
    "assets/image/s-o-c-i-a-l-c-u-t-aXJdmnxauwY-unsplash.jpg",
    "assets/image/lucrezia-carnelos-wQ9VuP_Njr4-unsplash.jpg",
    "assets/image/bastian-riccardi-BQ9usyzHx_w-unsplash.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 140,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            onPageChanged: (index, reason) {},
          ),
          items: imageAsset.map((img) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(img, fit: BoxFit.cover),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
