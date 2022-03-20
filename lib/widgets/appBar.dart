import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;

class AppBarNav extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  const AppBarNav(
      {Key? key,
      this.onPressed,
      this.iconColor,
      this.pageHeading = '',
      this.buttonText = '',
      this.buttonColor = Colors.transparent})
      : preferredSize = const Size.fromHeight(40.0),
        super(key: key);
  final Function? onPressed;
  final Color? iconColor;
  final String pageHeading;
  final String buttonText;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: _pagetittle(pageHeading, buttonText, buttonColor),
        leading: IconButton(
          onPressed: onPressed!(),
          icon: const Icon(Icons.keyboard_arrow_left),
          color: iconColor,
        ));
  }

  Widget _pagetittle(String title, String buttonText, Color buttonColor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: text_content.HeadingFive(
              text: title, textColor: AppColors.textColorLightBg),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.all(10),
              primary: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: () {},
            child: text_content.SubtitleOne(
              text: buttonText,
              textColor: AppColors.textColorPrimary,
            ))
      ],
    );
  }
}
