import 'package:flutter/material.dart';
import 'package:practicestacked/Constants/img.dart';
import 'package:practicestacked/Constants/txt.dart';
import 'package:practicestacked/ui/views/Login/loginViewModel.dart';
import 'package:practicestacked/ui/views/signUp/signUpView.dart';
import 'package:practicestacked/ui/widgets/bigText.dart';
import 'package:practicestacked/ui/widgets/loginPassword.dart';
import 'package:practicestacked/ui/widgets/socialLoginbutton.dart';
import 'package:practicestacked/ui/widgets/greyText.dart';
import 'package:practicestacked/ui/widgets/seperatorline.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.nonReactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              body: Column(
                children: [
                  Center(
                      child: Image(
                    image: AssetImage(imageConstants.loginLogo),
                    height: MediaQuery.of(context).size.height * .3,
                  )),
                  bigText(t: textConstant.letsyouIn),
                  customButton(
                      txt: textConstant.loginFb,
                      f: () {},
                      img: imageConstants.fbLogo,
                      ctx: context),
                  customButton(
                      txt: textConstant.loginGoogle,
                      f: () {},
                      img: imageConstants.googleLogo,
                      ctx: context),
                  customButton(
                      txt: textConstant.loginApple,
                      f: () {},
                      img: imageConstants.appleLogo,
                      ctx: context),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        sepLine(ctx: context),
                        greyText(t: textConstant.or),
                        sepLine(ctx: context)
                      ],
                    ),
                  ),
                  loginPassword(t: textConstant.loginPassword, ctx: context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      greyText(t: textConstant.dontHaveAnAccount),
                      TextButton(
                          onPressed: () {
                            model.navigate();
                          },
                          child: Text(
                            textConstant.signup,
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  )
                ],
              ),
            ));
  }
}
