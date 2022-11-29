import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:quizz/core/colorgame.dart';
import 'package:quizz/core/valgame.dart';
import 'package:quizz/data-method/login_data.dart';
import 'package:quizz/method/siginMethod.dart';

class SiginScreen extends StatefulWidget {
  const SiginScreen({super.key});

  @override
  State<SiginScreen> createState() => _SiginScreenState();
}

class _SiginScreenState extends State<SiginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(gradient: VColor.mainColor),
          child: Column(
            children: [
              Flexible(
                child: Container(),
                flex: 1,
              ),
              //!: Image game
              Image.asset("assets/imgs/5.webp"),
              Flexible(
                child: Container(),
                flex: 1,
              ),
              //!: Btn Login
              GoogleAuthButton(
                onPressed: () async {
                  LoginData.LoginApp(context)
                      .then((value) => SiginMethod.siginMethod(context));
                },
                style: AuthButtonStyle(
                    buttonType: AuthButtonType.secondary,
                    iconType: AuthIconType.secondary),
              ),
              const SizedBox(
                height: Vval.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
