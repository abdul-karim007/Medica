import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/signUp/signUpViewModel.dart';
import 'package:medicaApp/ui/widgets/SignUpTextField.dart';
import 'package:medicaApp/ui/widgets/bigText.dart';
import 'package:medicaApp/ui/widgets/customCheckBox.dart';
import 'package:medicaApp/ui/widgets/greyText.dart';
import 'package:medicaApp/ui/widgets/blueButton.dart';
import 'package:medicaApp/ui/widgets/miniSocialButton.dart';
import 'package:stacked/stacked.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                centerTitle: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                iconTheme: IconThemeData(color: Colors.black),
              ),
              body: Column(
                children: [
                  Center(
                    child: Image(image: AssetImage(imageConstants.signUpLogo)),
                  ),
                  bigText(t: textConstant.createNew,f: 35.0),
                  signUpTextField(
                      ctx: context,
                      t: textConstant.email,
                      i: Icons.email_rounded,
                      j: null),
                  signUpTextField(
                      ctx: context,
                      t: textConstant.password,
                      i: Icons.lock,
                      j: Icons.remove_red_eye),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customCheckBox(),
                        Text(
                          textConstant.rememberMe,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  blueButton(t: textConstant.signup, ctx: context,f: {}),
                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 10),
                    child: greyText(t: textConstant.orContwith, p: 0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      miniSocialLoginButton(

                          // txt: '',
                          f: () {},
                          img: imageConstants.googleLogo,
                          ctx: context),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12),
                        child: miniSocialLoginButton(
                          f: () {},
                          img: imageConstants.fbLogo,
                          ctx: context,
                        ),
                      ),
                      miniSocialLoginButton(
                          f: () {}, img: imageConstants.appleLogo, ctx: context)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        greyText(t: textConstant.alreadyHaveAnAccount, p: 0),
                        TextButton(
                            onPressed: () {
                              model.navigateToLogin();
                            },
                            child: Text(
                              textConstant.signin,
                              style: TextStyle(fontSize: 16),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
