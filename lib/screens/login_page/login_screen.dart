import 'package:flutter/material.dart';
import 'package:wealthwave/component/text_field_widget.dart';
import 'package:wealthwave/constants_used/colors_used.dart';
import 'package:wealthwave/constants_used/size_used.dart';
import 'package:wealthwave/screens/add_data/add_data.dart';
import 'package:wealthwave/screens/login_page/sign_up_page.dart';
import 'package:wealthwave/responsive_builder.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  void dispose() {
    userController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            'Hello',
            style: TextStyle(
              fontSize: fontSize,
            ),
          ),
        ),
        Center(
          child: Row(
            children: [
              if (ResponsiveBuilder.isWeb(context))
                const Expanded(child: SizedBox()),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: loginLeftColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: fontSize,
                              ),
                            )),
                            TextFieldWidget(
                              title: "Username",
                              controller: userController,
                            ),
                            TextFieldWidget(
                              title: "Email",
                              controller: emailController,
                            ),
                            TextFieldWidget(
                              title: "Password",
                              controller: passController,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //Submit button
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const AddData()));
                                // if (userController.text.isNotEmpty) {
                                //   if (passController.text.isNotEmpty) {}
                                // } else {}
                              },
                              child: const Text('Submit'),
                            ),

                            // signUp Page
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpPage()));
                              },
                              child: const Text('Create New'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (ResponsiveBuilder.isWeb(context))
                const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ],
    );
  }
}
