import 'package:flutter/material.dart';
import 'package:pur_response_design/utils/media_query_values.dart';

class CustomImageSliderWidget extends StatelessWidget {
  const CustomImageSliderWidget({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.isPortrait ? context.height / 3.5 : 0,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(images[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
