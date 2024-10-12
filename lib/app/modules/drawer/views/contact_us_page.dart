import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:praner_shop/utils/app_colors.dart';
import 'package:praner_shop/utils/app_icons.dart';
import 'package:praner_shop/widgets/app_back_button.dart';
import 'package:praner_shop/widgets/network_image.dart';

import '../../../../utils/app_defaults.dart';


class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: const Text('Contact Us'),
      ),
      backgroundColor: AppColors.cardColor,
      body: Container(
        margin: const EdgeInsets.all(AppDefaults.padding),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDefaults.padding,
          vertical: AppDefaults.padding * 2,
        ),
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackground,
          borderRadius: AppDefaults.borderRadius,
        ),
        child: Column(
          children: [
            const SizedBox(height: AppDefaults.padding),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Contact Us',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),

            const SizedBox(height: AppDefaults.padding * 2),

            /// Number
            Row(
              children: [
                SvgPicture.asset(AppIcons.contactPhone),
                const SizedBox(width: AppDefaults.padding),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '+8801710000000',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(height: AppDefaults.padding / 2),
                    Text(
                      '+8801710000000',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: AppDefaults.padding),
            Row(
              children: [
                SvgPicture.asset(AppIcons.contactEmail),
                const SizedBox(width: AppDefaults.padding),
                Text(
                  'jonarban45@gmail.com',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),

            const SizedBox(height: AppDefaults.padding),
            Row(
              children: [
                SvgPicture.asset(AppIcons.contactMap),
                const SizedBox(width: AppDefaults.padding),
                Text(
                  '26/C Mohammadpur\nDhaka, Bangladesh',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
            const SizedBox(height: AppDefaults.padding),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const AspectRatio(
                aspectRatio: 3 / 2,
                child: NetworkImageWithLoader(
                  'https://i.imgur.com/nys3Bxw.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
