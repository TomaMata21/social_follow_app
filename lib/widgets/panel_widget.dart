import 'package:flutter/material.dart';
import 'package:social_anim_app/models/user.dart';
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
        StatsWidget(user:user),
      ],
    );
  }
}
