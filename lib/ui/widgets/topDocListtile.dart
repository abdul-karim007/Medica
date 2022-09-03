import 'package:flutter/material.dart';
import 'package:medicaApp/ui/widgets/bigText.dart';
import 'package:medicaApp/ui/widgets/smallText.dart';

topDocListTile(
    {required ctx,
    required img,
    required bigT,
    required smallT,
    required smallT2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
    child: ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      leading: Container(
        width: MediaQuery.of(ctx).size.width * .2,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
        child: Image(
          image: AssetImage(
            img,
          ),
          height: 100,
        ),
      ),
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
