import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/Doctor%20Details/docDetailsViewModel.dart';
import 'package:medicaApp/ui/widgets/DocImageContainer.dart';
import 'package:medicaApp/ui/widgets/bigText.dart';
import 'package:medicaApp/ui/widgets/bluetext.dart';
import 'package:medicaApp/ui/widgets/homeIconCont.dart';
import 'package:medicaApp/ui/widgets/seperatorline.dart';
import 'package:medicaApp/ui/widgets/smallText.dart';
import 'package:stacked/stacked.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoctorsDetailViewModel>.nonReactive(
        viewModelBuilder: () => DoctorsDetailViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black54),
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: bigText(t: textConstant.docSheldon, f: 20),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border_outlined),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz_outlined)))
                ],
              ),
              body: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DoctorImageContainer(img: imageConstants.doctor),
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                bigText(t: textConstant.docSheldon, f: 18),
                                sepLine(ctx: context, w: .6),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: smallText(
                                      yourString: textConstant.pediatric),
                                ),
                                smallText(yourString: textConstant.cityHosp)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * .88,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              homeIconCont(
                                  icn: Icon(
                                Icons.groups,
                                color: Colors.blue,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: BlueText(textt: textConstant.fivek),
                              ),
                              smallText(yourString: textConstant.patients)
                            ],
                          ),
                          Column(
                            children: [
                              homeIconCont(
                                  icn: Icon(
                                Icons.timeline,
                                color: Colors.blue,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: BlueText(textt: textConstant.tenPlus),
                              ),
                              smallText(yourString: textConstant.yearsExp)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              homeIconCont(
                                  icn: Icon(
                                Icons.star_half,
                                color: Colors.blue,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: BlueText(textt: textConstant.decimal),
                              ),
                              smallText(yourString: textConstant.rating)
                            ],
                          ),
                          Column(
                            children: [
                              homeIconCont(
                                  icn: Icon(
                                Icons.reviews,
                                color: Colors.blue,
                              )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: BlueText(textt: textConstant.randomNo),
                              ),
                              smallText(yourString: textConstant.reviews)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }
}
