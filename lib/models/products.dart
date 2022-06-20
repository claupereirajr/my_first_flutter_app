import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular
  });

  @override
  List<Object?> get props {
    return [
      name,
      category,
      imageUrl,
      price,
      isRecommended,
      isPopular,
    ];
  }
  static List<Product> products = [
    const Product(name: 'MilkShake #1', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1549465159-983e697d23b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 4.49, isRecommended: false, isPopular: false),
    const Product(name: 'MilkShake #2', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1549465159-983e697d23b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 6.89, isRecommended: true, isPopular: false),
    const Product(name: 'MilkShake #3', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1549465159-983e697d23b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 9.89, isRecommended: false, isPopular: false),
    const Product(name: 'MilkShake #4', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1549465159-983e697d23b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 3.89, isRecommended: false, isPopular: false),
    const Product(name: 'MilkShake #5', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1549465159-983e697d23b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 10.49, isRecommended: true, isPopular: true),
    const Product(name: 'MilkShake Sonho de Valsa', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1549465159-983e697d23b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 7.49, isRecommended: true, isPopular: false),
    const Product(name: 'MilkShake Ovomaltine', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1566217678452-48d9de2fcea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 5, isRecommended: false, isPopular: true),
    const Product(name: 'MilkShake Ferrero Rocher', category: 'MilkShakes', imageUrl: 'https://images.unsplash.com/photo-1549465159-983e697d23b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 12.89, isRecommended: true, isPopular: true),
    const Product(name: 'Açaí 300ml', category: 'Açaís', imageUrl: 'https://images.unsplash.com/photo-1562166453-2783119c313a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 8.59, isRecommended: false, isPopular: false),
    const Product(name: 'Açaí Família', category: 'Açaís', imageUrl: 'https://images.unsplash.com/photo-1562166453-2783119c313a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 23.49, isRecommended: true, isPopular: true),
    const Product(name: 'Açaí 800ml', category: 'Açaís', imageUrl: 'https://images.unsplash.com/photo-1562166453-2783119c313a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 12.89, isRecommended: true, isPopular: true),
    const Product(name: 'Açaí Barco', category: 'Açaís', imageUrl: 'https://images.unsplash.com/photo-1562166453-2783119c313a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 18.49, isRecommended: true, isPopular: true),
    const Product(name: 'Cookie Recheado Prestígio', category: 'Cookies', imageUrl: 'https://images.unsplash.com/flagged/photo-1619271949275-7bb5e1dcea53?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 4.49, isRecommended: true, isPopular: true),
    const Product(name: 'Cookie Recheado Sensação', category: 'Cookies', imageUrl: 'https://images.unsplash.com/photo-1619271857926-c3cf380f0047?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 4.49, isRecommended: false, isPopular: true),
    const Product(name: 'Cookie Paçoca', category: 'Cookies', imageUrl: 'https://images.unsplash.com/photo-1629677595313-880bd1ab80d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 3.49, isRecommended: true, isPopular: false),
    const Product(name: 'Cookie Ferrero Rocher', category: 'Cookies', imageUrl: 'https://images.unsplash.com/photo-1629677595313-880bd1ab80d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 4.49, isRecommended: false, isPopular: true),
    const Product(name: 'Cookie #1', category: 'Cookies', imageUrl: 'https://images.unsplash.com/photo-1629677595313-880bd1ab80d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 3.49, isRecommended: false, isPopular: false),
    const Product(name: 'Cookie #2', category: 'Cookies', imageUrl: 'https://images.unsplash.com/photo-1629677595313-880bd1ab80d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 3.49, isRecommended: false, isPopular: true),
    const Product(name: 'Cookie #3', category: 'Cookies', imageUrl: 'https://images.unsplash.com/photo-1629677595313-880bd1ab80d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 4.49, isRecommended: true, isPopular: false),
    const Product(name: 'Cookie #4', category: 'Cookies', imageUrl: 'https://images.unsplash.com/photo-1629677595313-880bd1ab80d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80', price: 4.89, isRecommended: false, isPopular: true),
  ];

}
