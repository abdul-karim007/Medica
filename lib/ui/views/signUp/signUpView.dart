import 'package:flutter/material.dart';
import 'package:practicestacked/Constants/img.dart';
import 'package:practicestacked/Constants/txt.dart';
import 'package:practicestacked/ui/views/signUp/signUpViewModel.dart';
import 'package:practicestacked/ui/widgets/SignUpTextField.dart';
import 'package:practicestacked/ui/widgets/bigText.dart';
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
                  bigText(t: textConstant.createNew),
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
                ],
              ),
            ));
  }
}
