import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:resume/widgets/auto_scroll_widget.dart';
import 'package:resume/widgets/blurry_container_widget.dart';
import 'package:resume/widgets/card_action_widget.dart';
import 'package:resume/widgets/experience_timeline_widget.dart';
import 'package:resume/widgets/project_card.dart';
import 'package:resume/widgets/tilt_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GifController controller = GifController(
    loop: true,
    autoPlay: true,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFEAE0DA),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TiltParallaxContainer(),
            SizedBox(height: size.height * 0.01),
            const AutoScrollWidget(),
            SizedBox(height: size.height * 0.01),
            const ExperienceTimelineWidget(),
            SizedBox(height: size.height * 0.01),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return ProjectCardActionWidget(
                  projectName: 'Giphy Android App',
                );
              },
            ),
            SizedBox(height: size.height * 0.1),
          ],
        ),
      ),
    );
  }
}
