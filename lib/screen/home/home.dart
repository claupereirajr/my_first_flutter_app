import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Models
import '../../models/models.dart';
// Widgets
import '../../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Redmi Shoop'),
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.66,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList(),
          ),
          // Recommended
          const SectionTitle(title: 'VOCÊ VAI GOSTAR'),
          ProductCarousel(products: Product.products.where((product) => product.isRecommended).toList()),
          // Popular
          const SectionTitle(title: 'AMADOS DA GALERA'),
          ProductCarousel(products: Product.products.where((product) => product.isPopular).toList()),
        ],
      ),
    );
  }
}