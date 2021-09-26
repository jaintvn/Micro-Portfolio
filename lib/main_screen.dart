import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/footer.dart';
import 'widget/social_button.dart';
import 'config/social_media_links.dart';
import 'config/assets.dart';
import 'widget/profile_image.dart';
import 'widget/single_social_button.dart';
import 'config/config.dart';
import 'utils/utils.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Column(children: [
      Center(
        child: SizedBox(
          width: screenSize.width * .7,
          height: screenSize.height * .92,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProfileImageAnim(),
              const SizedBox(height: 10),
              createProfileInfo(context),
              const SizedBox(height: 30),
              createContactWidget(),
              const SizedBox(height: 30),
              createMediaIcons()
            ],
          ),
        ),
      ),
      const Footer()
    ]);
  }

  // To create profile info section. name and designation
  Widget createProfileInfo(BuildContext context) {
    return Column(
      children: [
        Text(Config.name,
            textScaleFactor: 2, style: Theme.of(context).textTheme.headline1),
        const SizedBox(height: 2),
        Text(Config.profession,
            textScaleFactor: 2, style: Theme.of(context).textTheme.headline2),
      ],
    );
  }

  //To create contact section, mobile and email
  Widget createContactWidget() {
    return SizedBox(
      width: 200,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SingleSocialButton(Config.mobileNumber, Assets.call, () {
          launchCaller();
        }),
        const SizedBox(height: 5),
        SingleSocialButton(Config.emailAddress, Assets.email, () {
          launchEmail();
        })
      ]),
    );
  }

  //To create Social media icons
  Widget createMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(Assets.facebook, SocialMediaLinks.facebook),
        SocialButton(Assets.instagram, SocialMediaLinks.instagram),
        SocialButton(Assets.linkedin, SocialMediaLinks.linkedin),
        SocialButton(Assets.youtube, SocialMediaLinks.youtube),
        //SocialButton(Assets.github, SocialMediaLinks.github),
        SocialButton(Assets.whatsapp, SocialMediaLinks.whatsapp),
      ],
    );
  }
}
