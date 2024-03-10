import 'package:api_key_bloc/models/product.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, this.product});
  final Product? product;


  @override
  Widget build(BuildContext context) {
    // Check if the URL is not empty
    if (product?.images.isNotEmpty ?? false) {
      return Container(
        height: 160,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
              product!.images[0]
                  .replaceAll('"', '')
                  .replaceAll('[', '')
                  .replaceAll(']', ''),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product!.title,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        product!.price.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add_shopping_cart,
                        size: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      // Use a placeholder or default image when the URL is empty
      return Container(
        height: 160,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage('https://miro.medium.com/v2/resize:fit:1400/1*dH58ZpeVOaNehc-JO-RIPw.png'), // Replace with your placeholder image
            fit: BoxFit.cover,
          ),
        ),
      );
    }
  }
}