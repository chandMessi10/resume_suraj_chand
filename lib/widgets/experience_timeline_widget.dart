import 'package:flutter/material.dart';
import 'package:lecle_bubble_timeline/lecle_bubble_timeline.dart';
import 'package:lecle_bubble_timeline/models/timeline_item.dart';

class ExperienceTimelineWidget extends StatefulWidget {
  const ExperienceTimelineWidget({super.key});

  @override
  State<ExperienceTimelineWidget> createState() =>
      _ExperienceTimelineWidgetState();
}

class _ExperienceTimelineWidgetState extends State<ExperienceTimelineWidget> {
  @override
  Widget build(BuildContext context) {
    return const BubbleTimeline(
      bubbleSize: 120,
      // List of Timeline Bubble Items
      items: [
        TimelineItem(
          title: 'Fonepay Payment Pvt. Ltd.',
          subtitle: 'Flutter Developer',
          icon: Icon(
            Icons.payment,
            color: Colors.black,
          ),
          bubbleColor: Colors.red,
          description: 'Full-Time',
          titleStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
          subtitleStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          descriptionStyle: TextStyle(fontSize: 12.0),
        ),
        TimelineItem(
          title: 'Maven Solutions',
          subtitle: 'Flutter Developer',
          icon: Icon(
            Icons.directions_bike,
            color: Colors.black,
          ),
          bubbleColor: Colors.yellow,
          description: 'Part-Time',
          titleStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
          subtitleStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          descriptionStyle: TextStyle(fontSize: 12.0),
        ),
        TimelineItem(
          title: 'Assys',
          subtitle: 'Flutter Developer',
          icon: Icon(
            Icons.directions_bus,
            color: Colors.black,
          ),
          bubbleColor: Colors.green,
          description: 'Full-Time',
          titleStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
          subtitleStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          descriptionStyle: TextStyle(fontSize: 12.0),
        ),
      ],
      stripColor: Colors.teal,
      dividerCircleColor: Colors.white,
    );
  }
}
