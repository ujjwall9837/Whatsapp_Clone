import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/feature/auth/controller/auth_controller.dart';

import 'package:whatsapp/feature/auth/widgets/custom_icon_button.dart';
import 'package:whatsapp/feature/auth/widgets/custom_text_field.dart';

class VerificationPage extends ConsumerWidget {
  const VerificationPage({
    super.key,
    required this.smsCodeId,
    required this.phoneNumber,
  });
  // : super(key: key);
  final String smsCodeId;
  final String phoneNumber;
  void verifySmsCode(
    BuildContext context,
    WidgetRef ref,
    String smsCode,
  ) {
    ref.read(authControllerProvider).verifySmsCode(
          context: context,
          smsCodeId: smsCodeId,
          smsCode: smsCode,
          mounted: true,
        );
  }

//   @override
//   State<VerificationPage> createState() => _VerificationPageStateState();
// }

// class _VerificationPageStateState extends State<VerificationPage> {
//   late TextEditingController codeController;

  // @override
  // void initState() {
  //   codeController = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   codeController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          'Verify Your Number',
          style: TextStyle(
            color: context.theme.authLoginPageColor,
          ),
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(
            onTap: () {},
            icon: Icons.more_vert,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: context.theme.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          'You Have tried to register +251282834 . before requesting an SMS or call with your code',
                    ),
                    TextSpan(
                      text: 'Wrong Number?',
                      style: TextStyle(
                        color: context.theme.blueColor,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 80,
              ),
              child: CustomTextField(
                hintText: '- - -  - - -',
                // controller: codeController,
                fontSize: 30,
                autoFocus: false,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  if (value.length == 6) {
                    return verifySmsCode(context, ref, value);
                  }
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Enter 6 digit code',
              style: TextStyle(color: context.theme.greyColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.message,
                  color: context.theme.greyColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Resend SMS',
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: context.theme.blueColor!.withOpacity(0.2),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: context.theme.greyColor,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  'Call Me',
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
