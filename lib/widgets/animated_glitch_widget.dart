import 'package:animated_glitch/animated_glitch.dart';
import 'package:flutter/material.dart';

class AnimatedGlitchBasicTab extends StatefulWidget {
  // final VoidCallback onGoToShader;

  const AnimatedGlitchBasicTab({
    super.key,
    // required this.onGoToShader,
  });

  @override
  State<AnimatedGlitchBasicTab> createState() => _AnimatedGlitchBasicTabState();
}

class _AnimatedGlitchBasicTabState extends State<AnimatedGlitchBasicTab> {
  final _controller = AnimatedGlitchController(
    frequency: const Duration(milliseconds: 100),
    level: 1.8,
    distortionShift: const DistortionShift(count: 3),
  );

  bool _showDistortion = true;
  bool _showColorChannel = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // FloatingActionButton(
          //   onPressed: widget.onGoToShader,
          //   child: const Text(
          //     'shader',
          //     textAlign: TextAlign.center,
          //   ),
          // ),
          const SizedBox(width: 16.0),
          Builder(builder: (context) {
            return FloatingActionButton(
              onPressed: Scaffold.of(context).openDrawer,
              child: const Icon(Icons.settings),
            );
          }),
        ],
      ),
      drawer: Drawer(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 32),
              const Text(
                'level',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: _controller.level,
                onChanged: (value) {
                  setState(() {
                    _controller.level = value;
                  });
                },
                min: 1.0,
                max: 10.0,
              ),
              const Text(
                'frequency',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: _controller.frequency.inMilliseconds.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _controller.frequency = Duration(
                      milliseconds: value.toInt(),
                    );
                  });
                },
                min: 1.0,
                max: 1000.0,
              ),
              const Text(
                'chance',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: _controller.chance.toDouble(),
                onChanged: (value) {
                  setState(() {
                    _controller.chance = value.toInt();
                  });
                },
                min: 0,
                max: 100,
              ),
              const Text(
                'showDistortion',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                value: _showDistortion,
                onChanged: (value) {
                  setState(() {
                    _showDistortion = value;
                  });
                },
              ),
              const Text(
                'showColorChannel',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Switch(
                value: _showColorChannel,
                onChanged: (value) {
                  setState(() {
                    _showColorChannel = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: AnimatedGlitch(
        showColorChannels: _showColorChannel,
        showDistortions: _showDistortion,
        controller: _controller,
        child: Image.network(
          'https://res.cloudinary.com/dtw74cb8u/image/upload/v1693591824/personal-contents/q8gtg6fp7d2lvt9mguoh.gif',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
