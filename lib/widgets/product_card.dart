import 'package:flutter/material.dart';

import '../models/products.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWhislist;

  const ProductCard({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftPosition = 5,
    this.isWhislist = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;

    return InkWell(
      onTap: () =>
          {Navigator.pushNamed(context, '/product', arguments: product)},
      child: Stack(
        children: [
          SizedBox(
            width: widthValue,
            height: 160,
            child: Image.network(product.imageUrl, fit: BoxFit.cover),
          ),
          Positioned(
            bottom: 5,
            left: leftPosition,
            child: Container(
              width: widthValue - 5 - leftPosition,
              height: 60,
              decoration: const BoxDecoration(color: Colors.black),
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '\$${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline3!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    isWhislist? Expanded(
                      child: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ) : const SizedBox(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
