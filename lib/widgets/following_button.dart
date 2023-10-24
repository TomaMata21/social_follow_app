import 'package:flutter/material.dart';

class FollowingButton extends StatelessWidget {
  const FollowingButton(
      {super.key, required this.isFollowing, required this.onClickedFollowing});

  final bool isFollowing;
  final void Function() onClickedFollowing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClickedFollowing,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
        height: isFollowing ? 50 : 60,
        width: isFollowing ? 120 : 60,
        padding: isFollowing
            ? const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
            : const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color:  isFollowing ? Colors.transparent : Colors.red,
          // shape:  isFollowing ? BoxShape.rectangle : BoxShape.circle,
          borderRadius: BorderRadius.circular( isFollowing ? 25 : 30),
          border: isFollowing ? Border.all(color: Colors.red, width: 2) : null,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          child:  isFollowing ?
          const Text("FOLLOW", style: TextStyle(fontSize: 20, color: Colors.black,),)
              : const Icon(
            Icons.group,
            color: Colors.white,
            size: 34,
          ),
        ),
      ),
    );
  }
}
