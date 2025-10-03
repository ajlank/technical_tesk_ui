import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:statemanagement/features/home/data/constants/property_data.dart';
import 'package:statemanagement/features/home/domain/entities/property_entity.dart';

class ProperySection extends StatelessWidget {
  const ProperySection({super.key, required this.wid, required this.properties});
 final List<PropertyEntity>properties;
  final double wid;
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(properties.length, (i) {
          var item = properties[i];
          return Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: wid * 0.6,
                    height: 340,

                    child: Image.asset(
                      item.imageUrl,
                      width: wid * 0.6,
                      height: 100,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 30,
                  child: Container(
                    height: 25,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black.withAlpha(60),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Image.asset('lib/assets/loc.png'),
                          const SizedBox(width: 5),
                          Text(
                            item.distance,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 36,
                  child: Container(
                    width: wid * 0.6,

                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black.withAlpha(60),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            item.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            item.location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
