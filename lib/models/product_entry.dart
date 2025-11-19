// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    int id;
    int userId;
    String name;
    int price;
    String description;
    String thumbnail;
    String category;
    bool isFeatured;
    String brand;
    int discount;
    int stock;

    ProductEntry({
        required this.id,
        required this.userId,
        required this.name,
        required this.price,
        required this.description,
        required this.thumbnail,
        required this.category,
        required this.isFeatured,
        required this.brand,
        required this.discount,
        required this.stock,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        category: json["category"],
        isFeatured: json["is_featured"],
        brand: json["brand"],
        discount: json["discount"],
        stock: json["stock"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "price": price,
        "description": description,
        "thumbnail": thumbnail,
        "category": category,
        "is_featured": isFeatured,
        "brand": brand,
        "discount": discount,
        "stock": stock,
    };

  // Harga setelah diskon
  int get priceAfterDiscount {
    if (discount <= 0) return price;
    return price - ((price * discount) ~/ 100);
  }

  // Format angka jadi 1.000.000
  String get formattedPrice {
    return _formatNumber(price);
  }

  String get formattedPriceAfterDiscount {
    return _formatNumber(priceAfterDiscount);
  }

  // Helper pemformat 3 digit
  String _formatNumber(int number) {
    return number.toString().replaceAllMapped(
      RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
      (m) => '${m[1]}.',
    );
  }
}
