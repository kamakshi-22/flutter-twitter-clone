import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/common/common.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/auth/view/signup_view.dart';
import 'package:twitter_clone/features/auth/widgets/auth_field.dart';
import 'package:twitter_clone/theme/pallete.dart';

class LoginView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const LoginView());
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(),
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AuthField(
                controller: emailController,
                hintText: 'Enter Email',
              ),
              const SizedBox(
                height: 25,
              ),
              AuthField(
                controller: passwordController,
                hintText: 'Enter Password',
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.topRight,
                child: RoundSmallButton(
                  onTap: () {},
                  label: 'Done',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              RichText(text: TextSpan(
                text: "Don't have an account? ",
                style: const TextStyle(
                      fontSize: 16,
                    ),
                children: [
                  TextSpan(
                    text: 'Sign up',
                    style: const TextStyle(
                      color: Pallete.blueColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    recognizer: TapGestureRecognizer()..onTap=(){
                      Navigator.push(context, SignUpView.route());
                    }
                  )
                ]
              )
              )
            ],
          ),
        )),
      ),
    );
  }
}
