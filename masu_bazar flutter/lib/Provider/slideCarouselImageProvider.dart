import 'package:flutter/widgets.dart';
import 'package:masu_bazar/Model/sliderImage.dart';

class SlideCarouselImageProvider extends ChangeNotifier {
  List<SlideCarouselImageModel> _homeSliderImage = [
    SlideCarouselImageModel(image: 'assets/images/ad1.jpg'),
    SlideCarouselImageModel(image: 'assets/images/ad3.jpg'),
    SlideCarouselImageModel(image: 'assets/images/ad2.jpg'),
    SlideCarouselImageModel(image: 'assets/images/ad3.png'),
    SlideCarouselImageModel(image: 'assets/images/ad4.jpeg'),
  ];
  List<SlideCarouselImageModel> _meatSliderImage = [
    SlideCarouselImageModel(
        image: 'assets/meat_shop_images/shop_carousel/shop1.jpg'),
    SlideCarouselImageModel(
        image: 'assets/meat_shop_images/shop_carousel/butcher1.jpg'),
    SlideCarouselImageModel(
        image: 'assets/meat_shop_images/shop_carousel/shop2.jpg'),
    SlideCarouselImageModel(
        image: 'assets/meat_shop_images/shop_carousel/desktop.jpg'),
  ];
  List<SlideCarouselImageModel> get homeCarousel {
    return [..._homeSliderImage];
  }

  List<SlideCarouselImageModel> get meatCarousel {
    return [..._meatSliderImage];
  }
}
