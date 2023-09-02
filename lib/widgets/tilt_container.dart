import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class TiltContainer extends StatefulWidget {
  const TiltContainer({super.key});

  @override
  State<TiltContainer> createState() => _TiltContainerState();
}

class _TiltContainerState extends State<TiltContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Tilt(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: size.width,
          height: size.height * 0.5,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class TiltParallaxContainer extends StatefulWidget {
  const TiltParallaxContainer({super.key});

  @override
  State<TiltParallaxContainer> createState() => _TiltParallaxContainerState();
}

class _TiltParallaxContainerState extends State<TiltParallaxContainer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Tilt(
        lightConfig: const LightConfig(disable: true),
        shadowConfig: const ShadowConfig(disable: true),
        borderRadius: BorderRadius.circular(16),
        childLayout: const ChildLayout(
          outer: [
            /// Parallax here
            Positioned(
              child: TiltParallax(
                child: Text('Parallax'),
              ),
            ),

            /// Parallax here
            Positioned(
              top: 20.0,
              left: 20.0,
              child: TiltParallax(
                size: Offset(-10.0, -10.0),
                child: Text('Tilt'),
              ),
            ),
          ],
        ),
        child: Container(
          width: size.width,
          height: size.height * 0.5,
          color: Colors.brown,
        ),
      ),
    );
  }
}
