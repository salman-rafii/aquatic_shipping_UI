import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({
    Key key,
  }) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  bool status = false;
  Color primaryColor = Color(0xff0bb783);
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
        title: Text("Contact Us"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
            elevation: 0,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Contact Us",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(),
                Table(
                  columnWidths: {1: FlexColumnWidth(1.5)},
                  children: [
                    inputField("Enter Your Name"),
                    inputField("Enter Your Email"),
                    inputField("Subject"),
                    textField("Message"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                                side: BorderSide(color: primaryColor),
                              ),
                              padding: EdgeInsets.all(8.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Send",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Poppins-Medium.ttf',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
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
    );
  }

  TableRow inputField(hintText) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  filled: true,
                  fillColor: Colors.grey[100],
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff0bb783), width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  TableRow textField(hintText) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: TextFormField(
                maxLines: 5,
                decoration: new InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  filled: true,
                  fillColor: Colors.grey[100],
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xff0bb783), width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
