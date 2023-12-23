import 'package:flutter/material.dart';
import 'package:lecle_bubble_timeline/lecle_bubble_timeline.dart';
import 'package:lecle_bubble_timeline/models/timeline_item.dart';

import 'blurry_container_widget.dart';

class ExperienceTimelineWidget extends StatefulWidget {
  const ExperienceTimelineWidget({super.key});

  @override
  State<ExperienceTimelineWidget> createState() =>
      _ExperienceTimelineWidgetState();
}

class _ExperienceTimelineWidgetState extends State<ExperienceTimelineWidget> {
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
            label: 'Experience',
          ),
        ),
        SizedBox(height: size.height * 0.01),
        BubbleTimeline(
          bubbleSize: 120,
          // List of Timeline Bubble Items
          items: [
            TimelineItem(
              title: 'Fonepay Payment Pvt. Ltd.',
              subtitle: 'Flutter Developer',
              icon: Image.network(
                width: 60,
                'https://media.licdn.com/dms/image/C4D0BAQEJd1e2UciMaA/company-logo_200_200/0/1679466706952/fonepaynepal_logo?e=2147483647&v=beta&t=M2rrZtpiNVqw5t6iCEnbTNPj9L_ndDf0m0uZoi7fMKs',
              ),
              bubbleColor: Colors.transparent,
              description: 'Full-Time',
              titleStyle:
                  TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
              subtitleStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              descriptionStyle: TextStyle(fontSize: 12.0),
            ),
            TimelineItem(
              title: 'Maven Solutions',
              subtitle: 'Flutter Developer',
              icon: Image.network(
                width: 60,
                'https://media.licdn.com/dms/image/C4D0BAQGamUNaaZkaYQ/company-logo_200_200/0/1655879707467/joinmavens_logo?e=2147483647&v=beta&t=qoX5Sxg1bGgZWzCPrbQXnf0Q7EQTERiRzPdr_7efKsc',
              ),
              bubbleColor: Colors.transparent,
              description: 'Part-Time',
              titleStyle:
                  TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
              subtitleStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              descriptionStyle: TextStyle(fontSize: 12.0),
            ),
            TimelineItem(
              title: 'Assys',
              subtitle: 'Flutter Developer',
              icon: Image.network(
                width: 60,
                'https://media.licdn.com/dms/image/C510BAQGHm_1sS_yoKA/company-logo_200_200/0/1583061627169?e=1703116800&v=beta&t=m9F20DKIyz8qBWkFWwm9MaIk8XWE3Q39GYT8VmKdW2Y',
              ),
              bubbleColor: Colors.transparent,
              description: 'Full-Time',
              titleStyle:
                  TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
              subtitleStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              descriptionStyle: TextStyle(fontSize: 12.0),
            ),
          ],
          stripColor: Colors.teal,
          dividerCircleColor: Colors.white,
        ),
      ],
    );
  }
}
