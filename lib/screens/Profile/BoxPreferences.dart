import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BoxPreferences extends StatefulWidget {
  const BoxPreferences({
    Key key,
  }) : super(key: key);

  @override
  _BoxPreferencesState createState() => _BoxPreferencesState();
}

class _BoxPreferencesState extends State<BoxPreferences> {
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
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           colors: <Color>[Color(0xff24b04b), Color(0xff0bb783)]),),
        // ),
        title: Text("Box Preferences"),
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
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Box Preferences",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                // ListTile(
                //   title: Text('Address Book',
                //       style: TextStyle(fontWeight: FontWeight.w800),),
                // ),
                Divider(),
                // Container(
                //   padding: EdgeInsets.all(20.0),
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       color: Color(0xffD7F9EF),),
                //   child: Text("Ship To",
                //       style: TextStyle(fontWeight: FontWeight.bold),
                //       textAlign: TextAlign.center,
                //       ),
                //   width: double.infinity,
                // ),
                Table(
                  columnWidths: {1: FlexColumnWidth(1.5)},
                  children: [
                    inputField("Box Name"),
                    inputField("Length"),
                    inputField("Width"),
                    inputField("Height"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    
                    Container(
                      margin: EdgeInsets.symmetric(horizontal:10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          // width: double.infinity,
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
                              "Save",
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
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 3, vertical: 2),
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  // contentPadding: EdgeInsets.all(8),
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

  TableRow apartinputField(hintText) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              child: Column(
                children: [
                  TextFormField(
                    decoration: new InputDecoration(
                      hintText: hintText,
                      isDense: true,
                      // contentPadding: EdgeInsets.all(8),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.all(5),
                          child: Text(
                            "is this residential?",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: FlutterSwitch(
                          height: 27.0,
                          // activeIcon: Icon(Icons.done),
                          activeColor: primaryColor,
                          value: status,
                          onToggle: (val) {
                            setState(
                              () {
                                status = val;
                                print(status);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
