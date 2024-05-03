import 'package:coffee_taste/app/modules/main/views/main_view.dart';
import 'package:coffee_taste/app/modules/sign_up/views/sign_up_view.dart';
import 'package:coffee_taste/app/shared/custom_text_field.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 27, 24),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 70),
                Image.asset(
                  "assets/images/tast.png",
                ),
                Text(
                  "Coffee Taste!".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 4,
                  ),
                ),
                const SizedBox(height: 90),
                const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const Text(
                  "We’ve already met!",
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 90),
                CustomTextField(
                  hintText: 'Enter your phone',
                  label: "phone number",
                  isPassword: false,
                  prefix: Image.asset("assets/images/phone.png"),
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  hintText: 'Enter your password',
                  label: "Password",
                  isPassword: true,
                  prefix: Image.asset("assets/images/password.png"),
                  icon: Image.asset("assets/images/eye.png"),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 169, 124, 55),
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                    width: 340,
                    height: 80,
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 85, 67, 60)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => const MainView());
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 0.7),
                              fontSize: 18,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            FluentIcons.arrow_right_24_regular,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Don’t have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: " Sign Up",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.to(() => const SignUpView());
                          },
                        style: const TextStyle(
                          color: Color.fromARGB(255, 169, 124, 55),
                          fontSize: 16,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
