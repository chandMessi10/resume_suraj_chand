import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';
import 'package:gif_view/gif_view.dart';
import 'package:resume/widgets/animated_text_widget.dart';

class TiltParallaxContainer extends StatefulWidget {
  const TiltParallaxContainer({super.key});

  @override
  State<TiltParallaxContainer> createState() => _TiltParallaxContainerState();
}

class _TiltParallaxContainerState extends State<TiltParallaxContainer> {
  GifController controller = GifController(
    loop: true,
    autoPlay: true,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Tilt(
        lightConfig: const LightConfig(disable: true),
        shadowConfig: const ShadowConfig(disable: true),
        borderRadius: BorderRadius.circular(16),
        childLayout: ChildLayout(
          outer: [
            Positioned(
              right: 20,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TiltParallax(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: GifView.network(
                            'https://res.cloudinary.com/dtw74cb8u/image/upload/v1693591824/personal-contents/q8gtg6fp7d2lvt9mguoh.gif',
                            height: 200,
                            width: 200,
                            frameRate: 10,
                            controller: controller,
                          ),
                        ),
                        SizedBox(height: size.height * 0.01),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                controller.play();
                              },
                              icon: const Icon(
                                Icons.play_arrow,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: size.width * 0.01),
                            IconButton(
                              onPressed: () {
                                controller.pause();
                              },
                              icon: const Icon(
                                Icons.pause,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20.0,
              left: 20.0,
              child: TiltParallax(
                size: const Offset(-10.0, -10.0),
                child: Text(
                  'Namaste World!',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            Positioned(
              top: 100.0,
              left: 20.0,
              child: TiltParallax(
                size: const Offset(-10.0, -10.0),
                child: Text(
                  "I'm Suraj Chand",
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
            Positioned(
              top: 150.0,
              left: 20.0,
              child: TiltParallax(
                size: const Offset(-10.0, -10.0),
                child: Text(
                  "Mobile Application Developer with expertise in Flutter, "
                  "Jetpack Compose and SwiftUI.",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ],
        ),
        child: Container(
          width: size.width,
          height: size.height * 0.5,
          color: const Color(0xFF382933),
        ),
      ),
    );
  }
}
