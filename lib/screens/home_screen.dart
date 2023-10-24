import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:social_anim_app/configs/data.dart';
import 'package:social_anim_app/widgets/custom_bottom_navigation.dart';
import 'package:social_anim_app/widgets/panel_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final user = users[index];
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.person_outline),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          ),
        ],
      ),
      body: SlidingUpPanel(
        color: Colors.transparent,
        body: PageView(
          children: users
              .map((user) => Image.asset(
                    user.profile,
                  ))
              .toList(),
          onPageChanged: (index) => setState(() {
            this.index = index;
          }),
        ),
        panelBuilder: (ScrollController scrollController) => PanelWidget(
            user: user,
            onClickedPanel: () {},
          onClickedFollowing: () => setState(() {
            user.isFollowing = !user.isFollowing;
          })
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
