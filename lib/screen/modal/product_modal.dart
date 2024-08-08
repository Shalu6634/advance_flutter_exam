class ProductModal {
  late int id;
  late dynamic price;

  late String title, description, image, category;

  // late Rating rating;

  ProductModal({
    required this.id,
    required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.category,
    // required this.rating
  });

  factory ProductModal.fromJson(Map m1) {
    return ProductModal(
      id: m1['id'],
      price: m1['price'].toDouble(),

      title: m1['title'],
      description: m1['description'],
      image: m1['image'],
      category: m1['category'],
      // rating: Rating.fromJson(m1['rating'])
    );
  }
}

// class Rating {
//   late int count;
//   late double rate;
//
//   Rating({required this.count, required this.rate});
//
//   factory Rating.fromJson(Map m1) {
//     return Rating(count: m1['count'], rate: m1['rate']);
//   }
// }
