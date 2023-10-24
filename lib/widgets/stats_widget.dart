import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_anim_app/models/user.dart';

class StatsWidget extends StatelessWidget {
  const StatsWidget({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildStatistics("Followers", user.followers),
          buildStatistics("Posts", user.post),
          buildStatistics("Following", user.following),
        ],
      ),
    );
  }

  Widget buildStatistics(String text, int value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$value",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const Gap(4),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
