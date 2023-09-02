import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';
import 'package:resume/widgets/auto_scroll_widget.dart';
import 'package:resume/widgets/card_action_widget.dart';
import 'package:resume/widgets/experience_timeline_widget.dart';
import 'package:resume/widgets/tilt_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final _controller = AnimatedGlitchController(
  //   frequency: const Duration(milliseconds: 100),
  //   level: 1.8,
  //   distortionShift: const DistortionShift(count: 3),
  // );
  //
  // bool _showDistortion = true;
  // bool _showColorChannel = true;

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const BigNoiseLiquidWidget(),
            // SizedBox(height: size.height * 0.01),
            // const TiltContainer(),
            // SizedBox(height: size.height * 0.01),
            const TiltParallaxContainer(),
            SizedBox(height: size.height * 0.01),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (controller.status == GifStatus.playing) {
                    controller.pause();
                  } else {
                    controller.play();
                  }
                });
              },
              child: GifView.network(
                'https://res.cloudinary.com/dtw74cb8u/image/upload/v1693591824/personal-contents/q8gtg6fp7d2lvt9mguoh.gif',
                height: 200,
                width: 200,
                frameRate: 10,
                controller: controller,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            const AutoScrollWidget(),
            SizedBox(height: size.height * 0.01),
            const ExperienceTimelineWidget(),
            SizedBox(height: size.height * 0.01),
            const CardActionWidget(),
            SizedBox(height: size.height * 0.1),
            // AnimatedGlitch(
            //   showColorChannels: _showColorChannel,
            //   showDistortions: _showDistortion,
            //   controller: _controller,
            //   child: Image.network(
            //     'https://res.cloudinary.com/dtw74cb8u/image/upload/v1693591824/personal-contents/q8gtg6fp7d2lvt9mguoh.gif',
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
