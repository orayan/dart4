import 'package:dart4/utils/path_images.dart';
import 'package:flutter/material.dart';

class ImageAnimals extends StatelessWidget {
  const ImageAnimals({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              image:
                  DecorationImage(fit: BoxFit.fill, image: AssetImage(image))),
        ));
  }
}
