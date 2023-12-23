import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class BlurryContainerWidget extends StatelessWidget {
  const BlurryContainerWidget({
    required this.iconData,
    required this.label,
    super.key,
  });

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      blur: 8,
      elevation: 0,
      color: Colors.grey,
      padding: const EdgeInsets.all(12),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, color: Colors.white60),
          const SizedBox(width: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
