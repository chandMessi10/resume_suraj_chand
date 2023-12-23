import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

import 'blurry_container_widget.dart';

class AutoScrollWidget extends StatefulWidget {
  const AutoScrollWidget({super.key});

  @override
  State<AutoScrollWidget> createState() => _AutoScrollWidgetState();
}

class _AutoScrollWidgetState extends State<AutoScrollWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: BlurryContainerWidget(
            iconData: Icons.info_outline,
            label: 'Skills',
          ),
        ),
        SizedBox(height: size.height * 0.01),
        const ScrollLoopAutoScroll(
          scrollDirection: Axis.horizontal,
          delay: Duration(seconds: 0),
          duration: Duration(seconds: 50),
          gap: 15,
          reverseScroll: false,
          // duplicateChild: 5,
          enableScrollInput: true,
          delayAfterScrollInput: Duration(seconds: 1),
          child: SizedBox(
            height: 100,
            width: 100,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: FlutterLogo(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
