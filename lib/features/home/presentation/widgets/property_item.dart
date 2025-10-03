import 'package:flutter/material.dart';

class PropertyItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String bedrooms;
  final String bathrooms;

  const PropertyItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Image.asset(
            imagePath,
            width: 120,
            height: 130,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(fontSize: 14, color: Colors.blue),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/houses/bed.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '$bedrooms Bedroom',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(width: 12),
                  Row(
                    children: [
                      Image.asset(
                        'lib/assets/houses/bath.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '$bathrooms Bathroom',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
