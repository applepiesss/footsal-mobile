import 'package:flutter/material.dart';
import 'package:footsal_mobile/colors.dart';
import 'package:footsal_mobile/models/product_entry.dart';

class ProductEntryCard extends StatelessWidget {
  final ProductEntry product;
  final VoidCallback? onTap;

  const ProductEntryCard({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: oat,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail (aspect ratio 1:1)
            AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  // Thumbnail image
                  Positioned.fill(
                    child: product.thumbnail.isNotEmpty
                        ? Image.network(
                            'http://localhost:8000/proxy-image/?url=${Uri.encodeComponent(product.thumbnail)}',
                            fit: BoxFit.cover,
                          )
                        : Container(color: beige),
                  ),

                  // Category badge
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: moss,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        product.category.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  // Featured badge
                  if (product.isFeatured)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: dustyRed,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          "Hot", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NAME
                  Text(
                    product.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // DESCRIPTION
                  Text(
                    product.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      height: 1.4,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // PRICE SECTION
                  if (product.stock > 0) ...[
                    if (product.discount == 0)
                      Text(
                        "Rp ${product.formattedPrice}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      )
                    else
                      Row(
                        children: [
                          Text(
                            "Rp ${product.formattedPrice}",
                            style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "Rp ${product.formattedPriceAfterDiscount}",
                            style: const TextStyle(
                              color: cherry,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                  ] else
                    const Text(
                      "Out of Stock",
                      style: TextStyle(
                        color: cherry,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  const SizedBox(height: 14),
                  const Divider(color: pearl, thickness: 1),

                  // DETAILS BUTTON
                  TextButton(
                    onPressed: onTap,
                    child: const Text(
                      "Details",
                      style: TextStyle(
                        color: cherry,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
