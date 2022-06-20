
import 'package:flutter/material.dart';
// Modals
import '../../models/models.dart';
// Widgets
import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Carrinho'),
      bottomNavigationBar: const CustomNavBar(),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Compras acima de R,00 tem Frete GRÁTIS!',
                  style: Theme.of(context).textTheme.headline5,
                ),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, '/'),
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: const RoundedRectangleBorder(),
                      elevation: 0),
                  child: Text(
                    'Compre mais',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                )
              ]),
              const SizedBox(height: 10,),
              CartProductCard(
                product: Product.products[0],
              ),
              CartProductCard(
                product: Product.products[4],
              ),
              const Divider(thickness: 2,),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('SUBTOTAL',
                          style: Theme.of(context)
                              .textTheme
                              .headline5,),
                        Text('\$12.00',
                          style: Theme.of(context)
                              .textTheme
                              .headline5,)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ENTREGA',
                          style: Theme.of(context)
                              .textTheme
                              .headline5,),
                        Text('\$5.00',
                          style: Theme.of(context)
                              .textTheme
                              .headline5,)
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: const BoxDecoration(color: Colors.black),
                    child: 
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('TOTAL',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!.copyWith(color: Colors.white),),
                          Text('\$25.00',
                            style: Theme.of(context)
                                .textTheme
                                .headline4!.copyWith(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}