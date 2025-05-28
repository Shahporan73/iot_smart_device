import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePrgressWidget extends StatelessWidget {
  const HomePrgressWidget({super.key});

  static const blueColor = Color(0xff4a77f9);
  static const orangeColor = Color(0xffff6a4a);
  static const greenColor = Color(0xff4caf50);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(20),
      // margin: const EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      width: Get.width,
      height: Get.height / 4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffe7ebf6),
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              // Outer blue circle (Steps)
              CircularPercentIndicator(
                radius: 80,
                lineWidth: 10,
                animation: true,
                animationDuration: 1500,
                percent: 0.85,
                backgroundColor: const Color(0xffd8e1ff),
                progressColor: blueColor,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              // Middle orange circle (Calories)
              CircularPercentIndicator(
                radius: 58,
                lineWidth: 10,
                animation: true,
                animationDuration: 1600,
                percent: 0.70,
                backgroundColor: const Color(0xffffd8d3),
                progressColor: orangeColor,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              // Inner green circle (Km)
              CircularPercentIndicator(
                radius: 35,
                lineWidth: 10,
                animation: true,
                animationDuration: 1700,
                percent: 0.50,
                backgroundColor: const Color(0xffe6f0e6),
                progressColor: greenColor,
                circularStrokeCap: CircularStrokeCap.round,
              ),
            ],
          ),
          const SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _InfoRow(
                icon: Icons.directions_walk,
                iconBg: Color(0x334a77f9),
                iconColor: blueColor,
                value: '2415',
                label: 'Steps',
              ),
              SizedBox(height: 18),
              _InfoRow(
                icon: Icons.local_fire_department,
                iconBg: Color(0x33ff6a4a),
                iconColor: orangeColor,
                value: '58',
                label: 'Calories',
              ),
              SizedBox(height: 18),
              _InfoRow(
                icon: Icons.show_chart,
                iconBg: Color(0x334caf50),
                iconColor: greenColor,
                value: '1.89',
                label: 'km',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final Color iconBg;
  final Color iconColor;
  final String value;
  final String label;

  const _InfoRow({
    Key? key,
    required this.icon,
    required this.iconBg,
    required this.iconColor,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: iconBg,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: iconColor, size: 18),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value,
                style: const TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black)),
            Text(label,
                style: const TextStyle(
                    fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black54)),
          ],
        )
      ],
    );
  }
}
