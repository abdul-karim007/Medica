import 'package:flutter/material.dart';
import 'package:medicaApp/ui/widgets/DocImageContainer.dart';
import 'package:medicaApp/ui/widgets/bigText.dart';
import 'package:medicaApp/ui/widgets/smallText.dart';

topDocListTile(
    {required ctx,
    required imaage,
    required bigT,
    required smallT,
    required smallT2, required f}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    child: ListTile(
      onTap: f,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      leading: DoctorImageContainer(img: imaage),
      tileColor: Colors.white,
      title: bigText(t: bigT, f: 18),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          smallText(yourString: '$smallT | $smallT2'),
          Center(
            child: Row(
              children: [
                Icon(Icons.star_border_outlined),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('4.9 (4217 reviews)'),
                )
              ],
            ),
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_outline,
            color: Colors.blue,
          )),
    ),
  );
}
