import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../controllers/ad_controller.dart';

class SliderBanner extends StatefulWidget {
  final AdController adController;

  const SliderBanner({required this.adController, super.key});

  @override
  State<SliderBanner> createState() => _SliderBannerState();
}

class _SliderBannerState extends State<SliderBanner> {
  int _current = 0;
  List<Widget> imageSliders = [];

  final CarouselController _controller = CarouselController();

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
  }

  void loadBanner() async {
    List<String> imgList = await widget.adController.getAllBanners();
    imageSliders = imgList
        .map((item) => Container(
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Image.network(item, fit: BoxFit.cover, width: 1000.0),
        )))
        .toList();
    setState(() {});
  }

  @override
  initState() {
    super.initState();
    loadBanner();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 150,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              items: imageSliders,
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                height: 150,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) => setState(() => _current = index),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageSliders.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black).withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
