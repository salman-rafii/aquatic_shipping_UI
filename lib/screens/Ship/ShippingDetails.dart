import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shipping_aquatic/screens/Profile/BoxPreferences.dart';

class ShippingDetails extends StatefulWidget {
  final Function setterFunction;

  const ShippingDetails({Key key, this.setterFunction}) : super(key: key);
  @override
  _ShippingDetailsState createState() => _ShippingDetailsState();
}

class _ShippingDetailsState extends State<ShippingDetails>
    with SingleTickerProviderStateMixin {
  int _currentStep = 0;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;

  // int _currentIndex = 0;

  // TabController _tabController;

  // _handleTabSelection() {
  //   if (_currentStep > 1) {
  //     print("IN FIRST");
  //     _tabController.index = 1;
  //     setState(() {
  //       _currentIndex = _tabController.index;
  //     });
  //   } else {
  //     _tabController.index = 0;
  //   }
  // }

  // @override
  // void initState() {
  //   _tabController = new TabController(length: 4, vsync: this, initialIndex: 0);
  //   _tabController.addListener(_handleTabSelection);
  //   _tabController.animation.addListener(() {
  //     final aniValue = _tabController.animation.value;
  //     if (aniValue - _currentIndex > 0.5) {
  //       setState(() {
  //         _currentIndex = _currentIndex + 1;
  //       });
  //     } else if (aniValue - _currentIndex < -0.5) {
  //       setState(() {
  //         _currentIndex = _currentIndex - 1;
  //       });
  //     }
  //   });
  //   super.initState();
  // }

  StepperType stepperType = StepperType.vertical;
  void _show(BuildContext ctx) {
    showModalBottomSheet(
      elevation: 10,
      // backgroundColor: Colors.amber,
      context: ctx,
      builder: (ctx) => Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.black,
                  ),
                  Text(
                    "PACKAGE INFORMATION",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.green,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              width: double.infinity,
            ),
            Container(
              // height: 300,
              // width: 250,
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.all(4),
              child: Text(
                "To avoid additional charges, be sure to enter accurate dimensions, weight and address.Dimensions should be rounded up to the nearest inch and weight rounded to the nearest pound in all cases as that is how UPS prices each shipment.Failure to do so may result in additional charges to your acount please see the tips at right to ensure your package is accurately priced and avoid additional charges.",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.clip,
                maxLines: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color primaryColor = Color(0xff0bb783);

  ThemeData themeData;
  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    return Scaffold(
      // bottomNavigationBar: bottomNavigationBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: primaryColor),
                  child: Stepper(
                    controlsBuilder: (BuildContext context, controlsDetails) {
                      return Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                // width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: primaryColor,
                                    padding: EdgeInsets.all(10.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(15.0),
                                    ),
                                  ),
                                  onPressed: _currentStep == 3
                                      ? null
                                      : controlsDetails.onStepContinue,
                                  child: Text(
                                    "Next",
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
                          new Padding(
                            padding: new EdgeInsets.all(3),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                // width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.grey,
                                    padding: EdgeInsets.all(10.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                  ),
                                  onPressed: _currentStep == 0
                                      ? null
                                      : controlsDetails.onStepCancel,
                                  child: Text(
                                    "Back",
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
                      );
                    },
                    type: stepperType,
                    physics: ScrollPhysics(),
                    currentStep: _currentStep,
                    onStepTapped: (step) => tapped(step),
                    onStepContinue: continued,
                    onStepCancel: cancel,
                    steps: [
                      Step(
                        title: new Text('Ship From'),
                        content: Column(
                          children: <Widget>[
                            Row(
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      // width: double.infinity,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: primaryColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(10.0),
                                            side:
                                                BorderSide(color: primaryColor),
                                          ),
                                          padding: EdgeInsets.all(8.0),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Add Address",
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
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Container(
                                      // width: double.infinity,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: primaryColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(10.0),
                                            side:
                                                BorderSide(color: primaryColor),
                                          ),
                                          padding: EdgeInsets.all(8.0),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Saved Addressess",
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
                            Table(
                              columnWidths: {1: FlexColumnWidth(1.5)},
                              children: [
                                inputField("Organization"),
                                inputField("Name"),
                                inputField("Street Address"),
                                inputField("Apart, Suite,Building etc"),
                                inputField("City"),
                                inputField("State"),
                                zipCodeShipFromInputField("Zip Code"),
                                inputField("Phone"),
                              ],
                            ),
                            // ListTile(
                            //   title: Text('Address Book',
                            //       style: TextStyle(fontWeight: FontWeight.w800),),
                            // ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 0
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: new Text('Ship To'),
                        content: Column(
                          children: <Widget>[
                            Table(
                              columnWidths: {1: FlexColumnWidth(1.5)},
                              children: [
                                inputField("Organization"),
                                inputField("Name"),
                                inputField("Street Address"),
                                inputField("Apart, Suite,Building etc"),
                                inputField("City"),
                                inputField("State"),
                                zipCodeShipToInputField("Zip Code"),
                                inputField("Phone"),
                                shipToEmailinputField("Email"),
                              ],
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 1
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        title: new Text('Package Dimensions'),
                        content: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _show(context);
                                  },
                                  child: Icon(
                                    LineAwesomeIcons.info_circle,
                                  ),
                                ),
                                Text(
                                  "Package Dimensions",
                                  style: TextStyle(fontSize: 20),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return BoxPreferences();
                                        },
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    LineAwesomeIcons.question_circle,
                                  ),
                                ),
                              ],
                            ),
                            Table(
                              columnWidths: {1: FlexColumnWidth(1.5)},
                              children: [
                                TableRow(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 5),
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          hintText: "10",
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(8),
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.green,
                                                width: 1.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 5),
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          hintText: "10",
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(8),
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.green,
                                                width: 1.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(right: 5, bottom: 5),
                                      child: TextFormField(
                                        decoration: new InputDecoration(
                                          hintText: "10",
                                          isDense: true,
                                          contentPadding: EdgeInsets.all(8),
                                          filled: true,
                                          fillColor: Colors.white,
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.green,
                                                width: 1.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: TextFormField(
                                    decoration: new InputDecoration(
                                      hintText: "Weight",
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(8),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 1.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Live Arrival Insurance",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Icon(
                                  LineAwesomeIcons.question_circle,
                                ),
                                SizedBox(
                                  height: 40,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Text("Declared Value"),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: TextFormField(
                                    decoration: new InputDecoration(
                                      hintText: "Weight",
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(8),
                                      filled: true,
                                      fillColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.green, width: 1.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(),
                              ],
                            ),
                          ],
                        ),
                        isActive: _currentStep >= 0,
                        state: _currentStep >= 2
                            ? StepState.complete
                            : StepState.disabled,
                      ),
                      Step(
                        state: StepState.complete,
                        title: Text(""),
                        content: Opacity(
                          opacity: 0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.list),
      //   onPressed: switchStepsType,
      // ),
    );
  }

  // BottomAppBar bottomNavigationBar() {
  //   return BottomAppBar(
  //       elevation: 0,
  //       shape: CircularNotchedRectangle(),
  //       child: Container(
  //         decoration: BoxDecoration(
  //           color: themeData.bottomAppBarTheme.color,
  //           boxShadow: [
  //             BoxShadow(
  //               color: themeData.cardTheme.shadowColor.withAlpha(40),
  //               blurRadius: 3,
  //               offset: Offset(0, -3),
  //             ),
  //           ],
  //         ),
  //         padding: EdgeInsets.only(top: 12, bottom: 12),
  //         child: TabBar(
  //           controller: _tabController,
  //           indicator: BoxDecoration(),
  //           indicatorSize: TabBarIndicatorSize.tab,
  //           indicatorColor: themeData.colorScheme.primary,
  //           tabs: <Widget>[
  //             Container(
  //               child: (_currentIndex == 0)
  //                   ? Column(
  //                       mainAxisSize: MainAxisSize.min,
  //                       children: <Widget>[
  //                         Icon(
  //                           MdiIcons.viewDashboard,
  //                           color: Colors.blue,
  //                         ),
  //                         Container(
  //                           margin: EdgeInsets.only(top: 4),
  //                           decoration: BoxDecoration(
  //                               color: Colors.blue,
  //                               borderRadius:
  //                                   new BorderRadius.all(Radius.circular(2.5),),),
  //                           height: 5,
  //                           width: 5,
  //                         )
  //                       ],
  //                     )
  //                   : Icon(
  //                       MdiIcons.viewDashboard,
  //                       color: themeData.colorScheme.onBackground,
  //                     ),
  //             ),
  //             Container(
  //                 margin: EdgeInsets.only(right: 24),
  //                 child: (_currentIndex == 1)
  //                     ? Column(
  //                         mainAxisSize: MainAxisSize.min,
  //                         children: <Widget>[
  //                           Icon(
  //                             MdiIcons.accountBoxOutline,
  //                             color: Colors.blue,
  //                           ),
  //                           Container(
  //                             margin: EdgeInsets.only(top: 4),
  //                             decoration: BoxDecoration(
  //                                 color: Colors.blue,
  //                                 borderRadius: new BorderRadius.all(
  //                                     Radius.circular(2.5),),),
  //                             height: 5,
  //                             width: 5,
  //                           )
  //                         ],
  //                       )
  //                     : Icon(
  //                         MdiIcons.accountBoxOutline,
  //                         color: themeData.colorScheme.onBackground,
  //                       ),),
  //             Container(
  //                 margin: EdgeInsets.only(left: 24),
  //                 child: (_currentIndex == 2)
  //                     ? Column(
  //                         mainAxisSize: MainAxisSize.min,
  //                         children: <Widget>[
  //                           Icon(
  //                             MdiIcons.shopping,
  //                             color: Colors.blue,
  //                           ),
  //                           Container(
  //                             margin: EdgeInsets.only(top: 4),
  //                             decoration: BoxDecoration(
  //                                 color: Colors.blue,
  //                                 borderRadius: new BorderRadius.all(
  //                                     Radius.circular(2.5),),),
  //                             height: 5,
  //                             width: 5,
  //                           )
  //                         ],
  //                       )
  //                     : Icon(
  //                         MdiIcons.shopping,
  //                         color: themeData.colorScheme.onBackground,
  //                       ),),
  //             Container(
  //                 child: (_currentIndex == 3)
  //                     ? Column(
  //                         mainAxisSize: MainAxisSize.min,
  //                         children: <Widget>[
  //                           Icon(
  //                             MdiIcons.account,
  //                             color: Colors.blue,
  //                           ),
  //                           Container(
  //                             margin: EdgeInsets.only(top: 4),
  //                             decoration: BoxDecoration(
  //                                 color: Colors.blue,
  //                                 borderRadius: new BorderRadius.all(
  //                                     Radius.circular(2.5),),),
  //                             height: 5,
  //                             width: 5,
  //                           )
  //                         ],
  //                       )
  //                     : Icon(
  //                         MdiIcons.accountOutline,
  //                         color: themeData.colorScheme.onBackground,
  //                       ),),
  //           ],
  //         ),
  //       ),);
  // }

  TableRow inputField(hintText) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: TextFormField(
                decoration: new InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  // contentPadding: EdgeInsets.all(8),
                  filled: true,
                  fillColor: Colors.grey[100],
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
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

  TableRow shipToEmailinputField(hintText) {
    return TableRow(
      children: [
        TableCell(
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: hintText,
                      isDense: true,
                      // contentPadding: EdgeInsets.all(8),
                      filled: true,
                      fillColor: Colors.grey[100],
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Text(
                        "create new address?",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: FlutterSwitch(
                        // width: MediaQuery.of(context).size.width * 0.16,
                        height: 27.0,

                        // activeIcon: Icon(Icons.done),
                        activeColor: primaryColor,
                        value: status1,
                        onToggle: (val) {
                          setState(() {
                            status1 = val;
                            print(status1);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "Is this residential?",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: FlutterSwitch(
                        // width: MediaQuery.of(context).size.width * 0.16,
                        height: 27.0,

                        // activeIcon: Icon(Icons.done),
                        activeColor: primaryColor,
                        value: status2,
                        onToggle: (val) {
                          setState(() {
                            status2 = val;
                            print(status2);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TableRow zipCodeShipFromInputField(hintText) {
    return TableRow(
      children: [
        TableCell(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: hintText,
                      isDense: true,
                      // contentPadding: EdgeInsets.all(8),
                      filled: true,
                      fillColor: Colors.grey[100],
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "new address?",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: FlutterSwitch(
                      width: MediaQuery.of(context).size.width * 0.16,
                      height: 27.0,

                      // activeIcon: Icon(Icons.done),
                      activeColor: primaryColor,
                      value: status3,
                      onToggle: (val) {
                        setState(() {
                          status3 = val;
                          print(status3);
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        // width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(color: primaryColor),
                            ),
                            padding: EdgeInsets.all(8.0),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Get Weather",
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
      ],
    );
  }

  TableRow zipCodeShipToInputField(hintText) {
    return TableRow(
      children: [
        TableCell(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  // width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: hintText,
                      isDense: true,
                      // contentPadding: EdgeInsets.all(8),
                      filled: true,
                      fillColor: Colors.grey[100],
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        // width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            padding: EdgeInsets.all(8.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(color: primaryColor),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Get Weather",
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
      ],
    );
  }

  // switchStepsType() {
  //   setState(() => stepperType == StepperType.vertical
  //       ? stepperType = StepperType.horizontal
  //       : stepperType = StepperType.vertical);
  // }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    if (_currentStep < 3) setState(() => _currentStep += 1);
    print(_currentStep);
    if (_currentStep > 2) {
      print("step crossed");
      widget.setterFunction();
    }
  }

  cancel() {
    if (_currentStep > 0) setState(() => _currentStep -= 1);
  }
}
