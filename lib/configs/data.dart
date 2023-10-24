import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:social_anim_app/configs/assets.dart';
import 'package:social_anim_app/models/user.dart';

final users = [
  User(
    name: "Alice Kponam",
    city: "Lomé",
    country: "Togo 🇹🇬",
    profile: Assets.profile(1),
    description: lorem(paragraphs: 1, words: 25),
    photos: [
      Assets.photo(1),
      Assets.photo(2),
      Assets.photo(3),
    ],
    followers: 1500,
    following: 92,
    post: 200,
  ),
  User(
    name: "Rébécca Azoti",
    city: "Cotonou",
    country: "Bénin 🇧🇯",
    profile: Assets.profile(2),
    description: lorem(paragraphs: 1, words: 20),
    photos: [
      Assets.photo(4),
      Assets.photo(5),
      Assets.photo(6),
    ],
    followers: 2500,
    following: 112,
    post: 500,
  ),
  User(
    name: "Amoin Zérékou",
    city: "Cocody",
    country: "Côte d'ivoire 🇨🇮",
    profile: Assets.profile(3),
    description: lorem(paragraphs: 1, words: 18),
    photos: [
      Assets.photo(7),
      Assets.photo(8),
      Assets.photo(9),
    ],
    followers: 1000,
    following: 592,
    post: 100,
  ),
  User(
    name: "Grace Baba",
    city: "Accra",
    country: "Ghana 🇬🇭",
    profile: Assets.profile(4),
    description: lorem(paragraphs: 1, words: 20),
    photos: [
      Assets.photo(10),
      Assets.photo(11),
      Assets.photo(12),
    ],
    followers: 3500,
    following: 82,
    post: 50,
  ),
];
