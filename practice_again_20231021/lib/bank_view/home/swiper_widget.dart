import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class SwiperWidget extends StatefulWidget {
  SwiperWidget({Key? key}) : super(key: key);

  @override
  _SwiperWidgetState createState() => _SwiperWidgetState();
}

class _SwiperWidgetState extends State<SwiperWidget> {
  final List<String> imageSwiper = [
    'assets/ex/sw01.png',
    'assets/ex/sw02.png',
    'assets/ex/sw03.png',
    'assets/ex/sw04.png',
  ];

  SwiperController _swiperController = SwiperController();

  @override
  void dispose() {
    _swiperController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 300,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            imageSwiper[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: imageSwiper.length,
        itemWidth: 350.0,
        layout: SwiperLayout.STACK,
        pagination: const SwiperPagination(),
        //paginationType: SwiperPaginationType.dots, // 使用圓點樣式
        control: const SwiperControl(), // 添加左右箭頭控制
        loop: true,
        autoplay: true, // 啟用自動切換頁面
        autoplayDelay: 3000, // 自動切換的時間間隔（以毫秒為單位）
      ),
    );
  }
}
