import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(MdiIcons.chevronLeft),
        ),
        title: Text("About Us"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal:20),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.all(25),
                      child: Text(
                        "AQUATIC XPRESS SHIPPING",
                        style: TextStyle(
                          color: Color(0xff0bb783),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.all(25),
                      child: Text(
                        "How did we get started? Aquatic Xpress Shipping was established because of the high need of aquatic professionals and hobbyists that ship aquatic related live animals such as fish, corals, plecos, as well as aquatic supplies. We understand that, with live animals, the speed of delivery is essential so that the customer will have a satisfied experience. A fish that is shipped cannot live for a long period of time especially when they have minimum air in their bags. We understand that the best way to ship any live aquatic animal would be to ship them overnight which could be costly. This site was created to help aquatic professionals, hobbyists, small businesses, etc. ship their live animals as fast as possible at an affordable price.",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    // elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.all(25),
                      child: Text(
                        "OWNER",
                        style: TextStyle(
                          color: Color(0xff0bb783),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      
                      padding: EdgeInsets.all(25),
                      child: Text(
                        "Fred Aspengren is an experienced hobbyist with more than 7 years of experience with African cichlids. It started with just one tank in his home as a decoration. Soon the fish multiplied, and the tanks multiplied and within one year, he had a whole room with more than 20 tanks. Within 3 years, he built 200 square feet shed in his back yard with more than 50 tanks. He currently now has an 800 square feet fish room with over 100 fish tanks. With so many fish, he has shipped his fish all over the United States.",
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
