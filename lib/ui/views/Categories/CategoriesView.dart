import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/Categories/CategoriesViewModel.dart';
import 'package:medicaApp/ui/widgets/bigText.dart';
import 'package:medicaApp/ui/widgets/topDocListtile.dart';
import 'package:stacked/stacked.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CategoriesViewModel>.nonReactive(
        viewModelBuilder: () => CategoriesViewModel(),
        builder: (context, model, child) => Scaffold(
              appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black54),
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: bigText(t: textConstant.topDoc, f: 22.0),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 14.0),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.more_horiz)))
                ],
              ),
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          topDocListTile(
                              f: model.navigateToDetails,
                              ctx: context,
                              imaage: imageConstants.doctor,
                              bigT: textConstant.docSheldon,
                              smallT: textConstant.pediatric,
                              smallT2: textConstant.cityHosp),
                          topDocListTile(
                              f: model.navigateToDetails,
                              ctx: context,
                              imaage: imageConstants.doctor,
                              bigT: textConstant.docSheldon,
                              smallT: textConstant.pediatric,
                              smallT2: textConstant.cityHosp),
                          topDocListTile(
                              f: model.navigateToDetails,
                              ctx: context,
                              imaage: imageConstants.doctor,
                              bigT: textConstant.docSheldon,
                              smallT: textConstant.pediatric,
                              smallT2: textConstant.cityHosp),
                          topDocListTile(
                              f: model.navigateToDetails,
                              ctx: context,
                              imaage: imageConstants.doctor,
                              bigT: textConstant.docSheldon,
                              smallT: textConstant.pediatric,
                              smallT2: textConstant.cityHosp),
                          topDocListTile(
                              f: model.navigateToDetails,
                              ctx: context,
                              imaage: imageConstants.doctor,
                              bigT: textConstant.docSheldon,
                              smallT: textConstant.pediatric,
                              smallT2: textConstant.cityHosp),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
