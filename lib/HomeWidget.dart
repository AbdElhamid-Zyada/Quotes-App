import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            width: 50,
            child: IconButton(
              icon: Icon(
                Icons.home_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                print("going to home page");
              },
            ),
          ),
          title: Text(
            "Quotes App",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            Container(
              width: 50,
              child: Icon(
                Icons.notifications_active,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              // height: 830,
              // width: 411.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(39.0),
                color: Colors.black.withOpacity(.7),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              padding: EdgeInsets.all(30),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage(
                        'https://i.etsystatic.com/32402887/c/1247/991/874/415/il/246c88/3411502732/il_340x270.3411502732_5isl.jpg'),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Container(
                    // alignment: Alignment.bottomRight,
                    // height: 47,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    // padding: EdgeInsets.only(right: 20),
                    color: Colors.amber.withOpacity(.7),
                    child: Text(
                      "Quote of the day",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
