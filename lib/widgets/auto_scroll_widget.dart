import 'package:flutter/material.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

class AutoScrollWidget extends StatefulWidget {
  const AutoScrollWidget({super.key});

  @override
  State<AutoScrollWidget> createState() => _AutoScrollWidgetState();
}

class _AutoScrollWidgetState extends State<AutoScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return const ScrollLoopAutoScroll(
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
        child: Card(),
      ),
    );
    // return const ScrollLoopAutoScroll(
    //   scrollDirection: Axis.horizontal,
    //   enableScrollInput: true,
    //   child: Text(
    //     'Very long text that bleeds out of the rendering space',
    //     style: TextStyle(fontSize: 20),
    //   ),
    // );
  }
}
