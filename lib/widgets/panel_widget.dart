import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:social_anim_app/models/user.dart';
import 'package:social_anim_app/widgets/panel_header.dart';
import 'package:social_anim_app/widgets/stats_widget.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({
    super.key,
    required this.user,
    required this.onClickedPanel,
    required this.onClickedFollowing,
  });

  final User user;
  final void Function() onClickedPanel;
  final void Function() onClickedFollowing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StatsWidget(user: user),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            child: buildProfile(),
          ),
        )
      ],
    );
  }

  Widget buildProfile() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onClickedPanel,
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            PanelHeader(
              user: user,
              onClickedFollowing: onClickedFollowing,
            ),
            const Gap(24),
            Expanded(child: buildProfileDetails(user)),
          ],
        ),
      ),
    );
  }

  Widget buildProfileDetails(User user) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(user.description,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            )),
        const Gap(12),
        const Text("Photos",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        const Gap(12),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: user.photos
                .map(
                  (photo) => Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(photo),
                          fit: BoxFit.cover,
                        )),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
