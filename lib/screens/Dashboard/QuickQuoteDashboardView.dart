import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class QuickQuoteDashboardView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final Color primaryColor = Color(0xff0bb783);

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
        title: Text(
          "Quick Quote",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Card(
        elevation: 0,
        child: Column(
          children: <Widget>[
            const ListTile(
              title: Text('Quick Quote',
                  style: TextStyle(fontWeight: FontWeight.w800),),
            ),
            Divider(),
            SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Table(
                columnWidths: {2: FlexColumnWidth(2)},
                defaultColumnWidth: FlexColumnWidth(5),
                children: [
                  TableRow(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter valid value';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            labelText: "From",
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter valid value';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            labelText: "To",
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter valid Weight';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            labelText: "Weight",
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter valid Length';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            labelText: "Length",
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter valid Width';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            labelText: "Width",
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Enter valid Height';
                            }
                            return null;
                          },
                          decoration: new InputDecoration(
                            labelText: "Height",
                            isDense: true,
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.grey[100],
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(color: primaryColor),
                          ),
                          padding: EdgeInsets.all(10.0),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            // If the form is valid, display a Snackbar.
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Processing Data'),
                              ),
                             
                            );
                          }
                        },
                        child: Text(
                          "Quick Quote",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins-Medium.ttf',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
