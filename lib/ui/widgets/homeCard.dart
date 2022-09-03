import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeBlueCard extends StatelessWidget {
  late String headText;
  late String contText;
  late String buttonText;
  late String img;
  late double pos;
  HomeBlueCard({Key? key,     required this.headText,
    required this.contText,
    required this.buttonText,
    required this.img,
    required this.pos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 18.0, left: 20, right: 20),
        child: Container(
          // height: MediaQuery.of(context).size.height * .24,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 18, left: 14, bottom: 10),
                    child: Text(
                      headText,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 14),
                      child: Container(
                        width: 180,
                        child: Text(
                          contText,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0, left: 14),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {},
                        child: Text(
                          buttonText,
                          style: TextStyle(color: Colors.blue),
                        )),
                  ),
                ],
              ),
              Image(
                image: AssetImage(img),
                height: 160,
                // width: 100,
              )
            ],
          ),
        ),
      ),
      Positioned(
        left: 0,
        right: 0,
        bottom: 10,
        child: DotsIndicator(
          position: pos,
          decorator: DotsDecorator(
              size: const Size.square(7.0),
              activeSize: const Size(18.0, 7.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45)),
              activeColor: Colors.white,
              color: Colors.white,
              spacing: EdgeInsets.all(4)),
          dotsCount: 3,
        ),
      )
    ],
  );
  }
}


