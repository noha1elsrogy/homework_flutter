import 'package:chat_ai_app/generated/assets.dart';
import 'package:chat_ai_app/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: kToolbarHeight + 10,
        padding: const EdgeInsets.symmetric(horizontal: 19.0),
        decoration: BoxDecoration(
          border: const Border(
            bottom: BorderSide(
              color: Colors.black12, // لون الخط الخفيف
              width: 1, // سماكة الخط
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(Assets.imagesArrowLeft),
                const SizedBox(width: 17),
                Image.asset(Assets.imagesUserAvatarImg),
                const SizedBox(width: 7.5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ChatGpt',
                      style: AppTextStyles.blueNunito23Normal(Colors.blue),
                    ),
                    Image.asset(Assets.imagesOnlineIcon),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 81),

            Row(
              children: [
                Image.asset(Assets.imagesVolumeHigh),
                const SizedBox(width: 19),
                Image.asset(Assets.imagesDownloadIcon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
