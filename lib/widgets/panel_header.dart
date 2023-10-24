import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_anim_app/models/user.dart';
import 'package:social_anim_app/widgets/following_button.dart';

class PanelHeader extends StatelessWidget {
  const PanelHeader({
    super.key,
    required this.onClickedFollowing,
    required this.user,
  });

  final User user;
  final void Function() onClickedFollowing;

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Expanded(child: buildUser()),
        FollowingButton(
          isFollowing: user.isFollowing,
          onClickedFollowing: onClickedFollowing,
        ),
      ],
    );
  }

  Widget buildUser() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),

        ),
        const Gap(14),
        Text("${user.city}, ${user.country}")
      ],

    );
  }
}
