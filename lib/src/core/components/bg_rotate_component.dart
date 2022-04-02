import 'package:flutter/material.dart';
import 'package:pokedex_v2/src/core/theme/app_colors.dart';

class BgRotateComponent extends StatelessWidget {
  const BgRotateComponent({
    Key? key,
    required this.size,
    this.color,
  }) : super(key: key);

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: const AlwaysStoppedAnimation(35 / 360),
      child: Image.asset(
        'assets/images/bgpokebola.png',
        height: size,
        color: color ?? AppColors.neutral,
      ),
    );
  }
}
