import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_html/html.dart' as html;

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/social_links.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.facebook,
          link: SocialLinks.facebook,
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.mailchimp,
          link: "gmail",
        ),
        SocialMediaIconBtn(
          icon: FontAwesomeIcons.linkedinIn,
          link: SocialLinks.linkedin,
        ),
        // SocialMediaIconBtn(
        //   icon: FontAwesomeIcons.twitter,
        //   link: SocialLinks.twitter,
        // ),
      ],
    );
  }
}

class SocialMediaIconBtn extends StatelessWidget {
  const SocialMediaIconBtn({super.key, required this.icon, this.link});
  final IconData icon;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: IconButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(15),
      ),
      onPressed: () {
        if (link == "gmail") {

        } else {
          html.window.open(link!, '_blank');
        }
      },
      child: Icon(
        icon,
        color: AppColors.primaryColor,
        size: 32,
      ),
    );
  }
}
