import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/Home/HomeViewModel.dart';
import 'package:medicaApp/ui/widgets/SignUpTextField.dart';
import 'package:medicaApp/ui/widgets/homeCard.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, model, child) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black54),
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Row(
                  children: [
                    Image(
                      image: AssetImage(imageConstants.googleLogo),
                      height: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.greeting(),
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_outline))
                ],
              ),
              body: Column(
                children: [
                  Center(
                    child: signUpTextField(
                        ctx: context,
                        t: textConstant.search,
                        i: Icons.search,
                        j: Icons.change_circle_outlined),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .24,
                    child: PageView.builder(
                        controller: model.pageController,
                        itemBuilder: (_, index) {
                          return homeBlueCard1(
                              pos: index.toDouble(),
                              // context: context,
                              headText: textConstant.medicalChecks,
                              contText: textConstant.cardText,
                              buttonText: textConstant.checkNow,
                              img: imageConstants.doctor);
                        }),
                  ),
                ],
              ),
            ));
  }
}
