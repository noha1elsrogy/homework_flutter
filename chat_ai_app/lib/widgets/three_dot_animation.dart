import 'package:flutter/material.dart';

class ThreeDotAnimation extends StatefulWidget {
  final Color color;
  const ThreeDotAnimation({super.key, this.color = Colors.black});

  @override
  State<ThreeDotAnimation> createState() => _ThreeDotAnimationState();
}

class _ThreeDotAnimationState extends State<ThreeDotAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (index) {
            return ScaleTransition(
              scale: Tween<double>(begin: 0.5, end: 1.0).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: Interval(
                    0.1 * index,
                    0.5 + 0.1 * index,
                    curve: Curves.easeInOut,
                  ),
                ),
              ),
              child: Text(
                ".",
                style: TextStyle(fontSize: 20, color: widget.color),
              ),
            );
          }),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
