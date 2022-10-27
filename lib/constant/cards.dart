import 'package:flutter/material.dart';
import 'package:nolycompta/constant/const.dart';

class Cards_AC extends StatelessWidget {
  final String title;
  final String image;
  Function x;

  Cards_AC(this.title, this.image, this.x);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: cards_decoration,
      // padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 104,
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width / 8,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: InkWell(
          onTap: () {
            return x();
          },
          child: Row(
            children: [
              Image.asset(
                image,
                width: 100,
                height: 70,
                alignment: Alignment.center,
              ),
              Container(
                width: 210,
                child: Text(
                  title,
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'DemiBold',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cards_AC_3 extends StatelessWidget {
  final String title;
  final String image;

  Cards_AC_3(
    this.title,
    this.image,
  );
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(
              top: 25,
            ),
            decoration: cards_decoration_3,
            height: 400,
            width: MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width / 8,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Sized_Box(25),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width / 1.45,
                        child: Text(
                          "L'association est-elle reconnue d'utilité publique?",
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Medium',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(20),
                        width: 60,
                        child: Text(
                          "hii",
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Medium',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width / 1.45,
                        child: Text(
                          "L'association émet-elle\ndes valeurs mobilières de placement ?",
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Medium',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(5),
                        width: 50,
                        child: Text(
                          "hiiiii",
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DemiBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 150,
                        child: Text(
                          title,
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DemiBold',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(5),
                        width: 50,
                        child: Text(
                          "hiiiii",
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DemiBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        width: 150,
                        child: Text(
                          title,
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DemiBold',
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(5),
                        width: 50,
                        child: Text(
                          "hiiiii",
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DemiBold',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            image,
            width: 100,
            height: 70,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
