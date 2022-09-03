import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/Home/HomeViewModel.dart';
import 'package:medicaApp/ui/widgets/SignUpTextField.dart';
import 'package:medicaApp/ui/widgets/customTextButton.dart';
import 'package:medicaApp/ui/widgets/homeCard.dart';
import 'package:medicaApp/ui/widgets/homeCategFilter.dart';
import 'package:medicaApp/ui/widgets/homeCategories.dart';
import 'package:medicaApp/ui/widgets/homeText.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
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
                        homeText(txt: textConstant.name)
                      ],
                    ),
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.favorite_outline)))
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
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return HomeBlueCard(
                              pos: index.toDouble(),
                              // context: context,
                              headText: textConstant.medicalChecks,
                              contText: textConstant.cardText,
                              buttonText: textConstant.checkNow,
                              img: imageConstants.doctor);
                        }),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        homeText(txt: textConstant.doctorSpeciality),
                        CustomTextButton(f: () {}, t: textConstant.seeAll)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          homeCatergories(
                              ic: Icon(
                                Icons.people_alt,
                                color: Colors.blue,
                              ),
                              t: textConstant.general),
                          homeCatergories(
                              ic: ImageIcon(
                                AssetImage(
                                  imageConstants.tooth,
                                ),
                                color: Colors.blue,
                              ),
                              t: textConstant.dentist),
                          homeCatergories(
                              ic: Icon(Icons.remove_red_eye,
                                  color: Colors.blue),
                              t: textConstant.opthalmic),
                          homeCatergories(
                              ic: Icon(Icons.fastfood, color: Colors.blue),
                              t: textConstant.nutritionist),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0, top: 8),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          homeCatergories(
                              ic: ImageIcon(
                                AssetImage(imageConstants.brain),
                                color: Colors.blue,
                              ),
                              t: textConstant.neurologist),
                          homeCatergories(
                              ic: Icon(
                                Icons.directions_walk,
                                color: Colors.blue,
                              ),
                              t: textConstant.pediatric),
                          homeCatergories(
                              ic: ImageIcon(
                                AssetImage(imageConstants.xray),
                                color: Colors.blue,
                              ),
                              t: textConstant.radiologist),
                          homeCatergories(
                              ic: Icon(
                                Icons.more_horiz_rounded,
                                color: Colors.blue,
                              ),
                              t: textConstant.more),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        homeText(txt: textConstant.topDocs),
                        CustomTextButton(f: () {}, t: textConstant.seeAll)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      homeCategFilter(
                          txt: textConstant.all,
                          func: model.setPressed,
                          func2: model.navigateToCategories,
                          condForColor: model.pressed),
                      homeCategFilter(
                          txt: textConstant.general,
                          func: model.setPressed2,
                          func2: model.navigateToCategories,
                          condForColor: model.pressed2),
                      homeCategFilter(
                          txt: textConstant.dentist,
                          func: model.setPressed3,
                          func2: model.navigateToCategories,
                          condForColor: model.pressed3),
                      homeCategFilter(
                          txt: textConstant.nutritionist,
                          func: model.setPressed4,
                          func2: model.navigateToCategories,
                          condForColor: model.pressed4),
                    ],
                  )
                ],
              ),
            ));
  }
}
