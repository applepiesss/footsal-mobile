import 'package:flutter/material.dart';
import 'package:footsal_mobile/colors.dart';
import 'package:footsal_mobile/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF6EF),
      appBar: AppBar(
        title: const Text('Product Detail'),
        backgroundColor: cherry,
        foregroundColor: oat,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container tengah untuk content
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1200),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back button
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back, color: Colors.black87),
                      label: const Text(
                        'Back to Product',
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Badges
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: moss,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            product.category.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (product.isFeatured)
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            decoration: BoxDecoration(
                              color: dustyRed,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              'Hot',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Name
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Brand
                    if (product.brand.isNotEmpty)
                      Text(
                        'Brand: ${product.brand}',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    const SizedBox(height: 16),

                    // Featured image
                    if (product.thumbnail.isNotEmpty)
                      AspectRatio(
                        aspectRatio: 5 / 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail)}',
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) => Container(
                              color: Colors.grey[300],
                              child: const Center(
                                child: Icon(Icons.broken_image, size: 50),
                              ),
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(height: 16),

                    // Description
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: oat,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        product.description,
                        style: const TextStyle(fontSize: 16, height: 1.6),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Price
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: product.stock > 0
                          ? (product.discount > 0
                              ? Row(
                                  children: [
                                    Text(
                                      'Rp ${product.formattedPrice}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Rp ${product.formattedPriceAfterDiscount}',
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: cherry,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              : Text(
                                  'Rp ${product.formattedPrice}',
                                  style: const TextStyle(fontSize: 20),
                                ))
                          : const Text(
                              'Out of Stock',
                              style: TextStyle(
                                fontSize: 18,
                                color: cherry,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),

            // Seller info full width
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF75070C),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seller: ${product.userId}',
                    style: const TextStyle(
                      color: Color(0xFFF0E6DA),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Seller',
                    style: TextStyle(color: oat),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
