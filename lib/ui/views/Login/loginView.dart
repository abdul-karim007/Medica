import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/Login/loginViewModel.dart';
import 'package:medicaApp/ui/widgets/bigText.dart';
import 'package:medicaApp/ui/widgets/blueButton.dart';
import 'package:medicaApp/ui/widgets/socialLoginbutton.dart';
import 'package:medicaApp/ui/widgets/greyText.dart';
import 'package:medicaApp/ui/widgets/seperatorline.dart';
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
                  bigText(t: textConstant.letsyouIn, f: 35.0),
                  socialLoginButton(
                      txt: textConstant.loginFb,
                      f: () {},
                      img: imageConstants.fbLogo,
                      ctx: context),
                  socialLoginButton(
                      txt: textConstant.loginGoogle,
                      f: () {},
                      img: imageConstants.googleLogo,
                      ctx: context),
                  socialLoginButton(
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
                        sepLine(ctx: context, w: .35),
                        greyText(t: textConstant.or, p: 12),
                        sepLine(ctx: context, w: .35)
                      ],
                    ),
                  ),
                  blueButton(
                      t: textConstant.loginPassword,
                      ctx: context,
                      f: model.navigateToHome),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      greyText(t: textConstant.dontHaveAnAccount, p: 0),
                      TextButton(
                          onPressed: () {
                            model.navigateToSignUp();
                          },
                          child: Text(
                            textConstant.signup,
                            style: TextStyle(fontSize: 16),
                          ))
                    ],
                  ),
                ],
              ),
            ));
  }
}
