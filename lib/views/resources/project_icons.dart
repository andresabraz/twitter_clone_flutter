import 'package:flutter/material.dart';

class ProjectIcons {
  ProjectIcons._();

  static const double widthHeightIcon = 25;
  static const double widthHeightSmallIcon = 15;

  static Image get bell => Image.asset(
        "assets/icons/bell.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );
  static Image get bellSolid => Image.asset(
        "assets/icons/bell-solid.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );

  static Image get feature => Image.asset(
        "assets/icons/feature.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );

  static Image get likeSolid => Image.asset("assets/icons/like-solid.png");
  static Image get likeSolidLike =>
      Image.asset("assets/icons/like-solid-like.png");

  static Image get home => Image.asset(
        "assets/icons/home.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );
  static Image get homeSolid => Image.asset(
        "assets/icons/home-solid.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );

  static Image get newTweet => Image.asset(
        "assets/icons/new-tweet.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );

  static Image get notification => Image.asset("assets/icons/notification.png");

  static Image get profile => Image.asset(
        "assets/icons/profile.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );
  static Image get profileSolid => Image.asset(
        "assets/icons/profile-solid.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );

  static Image get searchSolid => Image.asset(
        "assets/icons/search-solid.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );
  static Image get search => Image.asset(
        "assets/icons/search.png",
        width: widthHeightIcon,
        height: widthHeightIcon,
      );

  static Image get comment => Image.asset(
        "assets/icons/comment.png",
        width: widthHeightSmallIcon,
        height: widthHeightSmallIcon,
      );

  static Image get retweet => Image.asset(
        "assets/icons/retweet.png",
        width: widthHeightSmallIcon,
        height: widthHeightSmallIcon,
      );

  static Image get like => Image.asset(
        "assets/icons/like.png",
        width: widthHeightSmallIcon,
        height: widthHeightSmallIcon,
      );
}
