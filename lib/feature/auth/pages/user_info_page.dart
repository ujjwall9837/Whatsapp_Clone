import 'package:flutter/material.dart';

import 'package:whatsapp/common/extension/custom_theme_extension.dart';
// import 'package:whatsapp/common/utils/coloors.dart';
import 'package:whatsapp/common/widgets/custom_elevated_button.dart';
import 'package:whatsapp/feature/auth/widgets/custom_text_field.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Profile Information',
          style: TextStyle(color: context.theme.authLoginPageColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              'Please Provide your name and an optional phone number',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: context.theme.greyColor,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(26),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.theme.userVerificationBgColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 3, right: 3),
                child: Icon(
                  Icons.add_a_photo_rounded,
                  size: 48,
                  color: context.theme.userVerificationColor,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Expanded(
                  child: CustomTextField(
                    autoFocus: true,
                    hintText: 'Type your name here',
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: context.theme.userVerificationColor,
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
