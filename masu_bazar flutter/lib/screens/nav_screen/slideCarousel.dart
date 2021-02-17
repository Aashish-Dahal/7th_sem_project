import 'package:flutter/widgets.dart';

class SlideCarouselImage {
  final String images;

  SlideCarouselImage({this.images});
  static List<SlideCarouselImage> homeSliderImage = [
     SlideCarouselImage(images: 'assets/images/ad1.jpg'),
     SlideCarouselImage(images: 'assets/images/ad3.jpg'),
    SlideCarouselImage(images: 'assets/images/ad2.jpg'),
    SlideCarouselImage(images: 'assets/images/ad3.png'),
    SlideCarouselImage(images: 'assets/images/ad4.jpeg'),
     
  ];
  static List<SlideCarouselImage> meatSliderImage = [
    SlideCarouselImage(
        images: 'assets/meat_shop_images/shop_carousel/shop1.jpg'),
    SlideCarouselImage(
        images: 'assets/meat_shop_images/shop_carousel/butcher1.jpg'),
    SlideCarouselImage(
        images: 'assets/meat_shop_images/shop_carousel/shop2.jpg'),
    SlideCarouselImage(
        images: 'assets/meat_shop_images/shop_carousel/desktop.jpg'),
  ];
}
