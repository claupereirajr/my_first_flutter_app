import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
// Models
import '../../models/models.dart';
// Blocs
import '../../blocs/wishlist/wishlist_bloc.dart';
// Widgets
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => ProductScreen(product: product));
  }

  final Product product;

  // ignore: use_key_in_widget_constructors
  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.share, color: Colors.white),
                ),
                BlocBuilder<WishlistBloc, WishlistState>(
                  builder: (context, state) {
                    return IconButton(
                      onPressed: () {
                        context
                            .read<WishlistBloc>()
                            .add(AddWishlistProduct(product));
                        const snackbar = SnackBar(
                            content: Text('Adicionado aos favoritos!'));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                      icon: const Icon(Icons.favorite, color: Colors.white),
                    );
                  },
                ),
                ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Text(
                      'ADICIONAR',
                      style: Theme.of(context).textTheme.headline3!,
                    ))
              ],
            ),
          )),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [
              HeroCarouselCard(
                product: product,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline2!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'INFORMAÇÕES',
                style: Theme.of(context).textTheme.headline3,
              ),
              children: [
                ListTile(
                    title: Text(
                  'Delegadis gente finis, bibendum egestas augue arcu ut est.Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.Si num tem leite então bota uma pinga aí cumpadi!Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.',
                  style: Theme.of(context).textTheme.bodyText1,
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              title: Text(
                'DELIVERY',
                style: Theme.of(context).textTheme.headline3,
              ),
              children: [
                ListTile(
                    title: Text(
                  'Pra lá , depois divoltis porris, paradis.Praesent vel viverra nisi. Mauris aliquet nunc non turpis scelerisque, eget.Quem num gosta di mim que vai caçá sua turmis!Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi. Delegadis gente finis, bibendum egestas augue arcu ut est.Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.Si num tem leite então bota uma pinga aí cumpadi!Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.',
                  style: Theme.of(context).textTheme.bodyText1,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
