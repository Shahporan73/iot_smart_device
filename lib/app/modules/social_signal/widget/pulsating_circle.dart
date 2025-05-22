import 'package:flutter/material.dart';

import '../../../../resource/app_colors/App_Colors.dart';

class PulsatingCircle extends StatefulWidget {
  const PulsatingCircle({Key? key}) : super(key: key);

  @override
  _PulsatingCircleState createState() => _PulsatingCircleState();
}

class _PulsatingCircleState extends State<PulsatingCircle> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationScale;
  late Animation<double> _animationOpacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();

    _animationScale = Tween<double>(begin: 1.0, end: 1.8).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _animationOpacity = Tween<double>(begin: 0.4, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildCircle(double radius, Color color) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.scale(
              scale: _animationScale.value,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.mainColor.withOpacity(_animationOpacity.value),
                ),
              ),
            );
          },
        ),
        _buildCircle(80, AppColors.mainColor.withOpacity(0.15)),
        _buildCircle(60, AppColors.mainColor.withOpacity(0.3)),
        _buildCircle(40, AppColors.mainColor.withOpacity(0.5)),
      ],
    );
  }
}