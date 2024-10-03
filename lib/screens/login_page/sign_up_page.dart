import 'package:flutter/material.dart';
import 'package:wealthwave/component/text_field_widget.dart';
import 'package:wealthwave/constants_used/colors_used.dart';
import 'package:wealthwave/responsive_builder.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final TextEditingController rePassController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    emailController.dispose();
    rePassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeScreenBGColor,
      body: Column(
        children: [
          const Text('data'),
          Row(
            children: [
              if (ResponsiveBuilder.isWeb(context))
                const Expanded(child: SizedBox()),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(20),
                  color: loginLeftColor,
                  child: Column(
                    children: [
                      TextFieldWidget(
                          title: 'UserName', controller: userController),
                      TextFieldWidget(
                          title: 'Email', controller: emailController),
                      TextFieldWidget(
                          title: 'Password', controller: passController),
                      TextFieldWidget(
                          title: 'Retype Password',
                          controller: rePassController),
                    ],
                  ),
                ),
              ),
              if (ResponsiveBuilder.isWeb(context))
                const Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}
