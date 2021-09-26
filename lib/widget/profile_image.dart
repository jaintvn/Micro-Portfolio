import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../config/Assets.dart';
import '../config/config.dart';

class ProfileImageAnim extends StatefulWidget {
  const ProfileImageAnim({Key? key}) : super(key: key);

  @override
  State<ProfileImageAnim> createState() => _ProfileImageAnimState();
}

class _ProfileImageAnimState extends State<ProfileImageAnim> {
  late RiveAnimationController _controller;

  bool _isPlaying = false;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _controller = OneShotAnimation(
      'comewave',
      autoplay: false,
      onStop: () => setState(() => {_isPlaying = false}),
      onStart: () => setState(() => {_isPlaying = true}),
    );

    Future.delayed(const Duration(seconds: Config.animStartSecond), () {
      _controller.isActive = true;
      _timer = Timer.periodic(
          const Duration(seconds: Config.animPeriodicSecond), (timer) {
        if (!_isPlaying) {
          _controller.isActive = true;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -20,
            right: -3.5,
            child: SizedBox(
              width: 100,
              height: 100,
              child: RiveAnimation.asset(
                Assets.riveAndroid,
                controllers: [_controller],
              ),
            ),
          ),
          SizedBox(
            width: 190,
            height: 190,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45,
              child: ClipOval(
                child: Image.asset(Assets.profileImage, fit: BoxFit.fill),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
