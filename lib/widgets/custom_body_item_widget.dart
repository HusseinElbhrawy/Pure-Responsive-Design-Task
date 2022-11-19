import 'package:flutter/material.dart';
import 'package:pur_response_design/utils/media_query_values.dart';

class CustomBodyItemWidget extends StatelessWidget {
  const CustomBodyItemWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.isPortrait ? context.width / 2 : context.width / 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blue,
          width: 5,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: context.isPortrait ? context.width / 8 : context.width / 12,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
