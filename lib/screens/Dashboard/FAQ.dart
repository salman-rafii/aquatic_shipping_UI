import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'dart:io';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
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
        title: Text("FAQ"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Card(
              elevation: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Package Related Questions",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Card(
                      elevation: 5,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          accentColor: Color(0xff0bb783),
                        ),
                        child: ExpansionTile(
                          title: Text("Weekly Service Upcharge"),
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "At the end of every week, typically Sunday, UPS normally send us an audit report for all packages that have inaccurate weight, box dimensions and or address correction. It is important for all customers to make sure the box dimensions, weight size and addresses that is inputted is as accurate as possible to avoid these charges. To check for any surcharges accrued, you can go to your account under surcharges or you can click “Service upcharge link”.",
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Card(
                      elevation: 5,
                      child: Theme(
                         data: Theme.of(context).copyWith(
                          accentColor: Color(0xff0bb783),
                        ),
                        child: ExpansionTile(
                          title: Text("Tips to Avoid Additional Charges"),
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Incorrect Address Charges:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              'Address corrections usually charge \$17 so please double check your address information for 100% accuracy.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        )
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: 'For best accuracy',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              '\n1- Double or triple check the address!',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n2- Do not put a PO BOX in the address fields',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n3- Double or triple check the zip code! 89123 is not the same as 89124!',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n4- Enter your information correctly and double check for accuracy',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Incorrect Dimension Charges:',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      children: [
                                        TextSpan(
                                          text:
                                              '\nUPS checks packages for inaccuracy. They use lasers to determine the size of the package. If the size claimed is not the size UPS measures, you will receive an additional charge. For example, you stated that the box size was 10x10x10 but they measured 10x10x12 then you will be charged an additional fee. Charges to inaccurate box sizes varies.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text:
                                              '\nIMPORTANT TIP: Box companies typically put the dimensions of the box on the bottom of the box. This is sometimes the internal (inside) size of the box. UPS measures the external (outside) size of the box and round up to the nearest inch. For example, if your box says the size is 10x10x10 but UPS measures 10x10x11, you will receive an additional charge.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text: '\nFor best accuracy',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  '\n1- Measure the outside of your sealed box and round up to the nearest inch.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n2- Bulges of boxes will sometimes change the box measures. Be sure to measure the bulges when measuring your package.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n3- Measure two or three times.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n4- Enter your information correctly and double check for accuracy.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                          ],
                                        ),
                                        TextSpan(
                                          text: '\nIncorrect Weight Charges',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  '\n1- Use a standard scale and round up to the nearest pound. For example, if your box weighs 4.1lbs, you should round your box weight to 5lbs.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n2- Check box weight two or three times for best accuracy.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n3- Enter your information correctly and double check for accuracy.',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Card(
                      elevation: 5,
                      child: Theme(
                         data: Theme.of(context).copyWith(
                          accentColor: Color(0xff0bb783),
                        ),
                        child: ExpansionTile(
                          title: Text("Live Arrival Insurance"),
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  RichText(
                                    softWrap: true,
                                    textAlign: TextAlign.justify,
                                    text: TextSpan(
                                      text: 'Maximum Coverage - \$1000',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '\n\nCoverage \$1 to \$300',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n\nabove \$300 coverage, \$2 Fee per \$100 worth of coverage Pays out insured amount PLUS full refund of the shipping cost for that label. Policy Exclusion Excluded causes for delay: “Live Arrival Insurance does not apply to shipments that are delayed due to causes beyond UPS’s control, including, but not limited to, the following:',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n a. the unavailability or refusal of a person to accept delivery of the shipment.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n b. Forces of nature or natural disasters; including but not limited to natural disasters such as earthquakes, floods, named storms, blizzards, hurricanes, tornadoes, volcanic eruptions, mud slides, monsoon, tsunamis, and fire caused by lightning.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n c. weather events, such as thunderstorms, rainstorms and snowstorms that cause disruption or delay to logistics services.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n d. weather events, such as thunderstorms, rainstorms and snowstorms that cause disruption or delay to logistics services.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n e. acts or omissions of customs or similar authorities, authority of law.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n f. insufficient information provided by a customer, (including incorrect addresses, missing suite number, etc.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n g. Hazardous Materials (as such term is defined in the UPS Tariff/Terms and Conditions of Service).',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n h. packages inadequately packed for sustainability during transit.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n i. the application of security regulations imposed by the government, or otherwise applicable to the shipment, riots, strikes or other labor disputes, civil unrest, disruptions in national or local air or ground transportation networks (including, but not limited to, UPS’s transportation network).',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n j. disruption or failure of communication and information systems.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n k. any requested hold or rerouting of package by the customer/shipper/consignee.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n\nValid for Priority Overnight service ONLY. Valid for live fish ONLY. The shipment must have been',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' delivered late',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' for Live Arrival Insurance to apply (Example: Scheduled delivery date is on Tuesday but was delivered on Wednesday). The seller assumes all responsibility for live deliveries made on time.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' Dead on Arrival(DOA) claims must be made',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' within 8 hours',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' of delivery.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' You must provide the required DOA proof (pics and/or video) within 8 hours of delivery. Email: info@aquaticxpressshipping.com.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              '\n\nIf you decline insurance coverage, there is no refund or liability for any reason, including UPS negligence, damage, or loss.',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Shipping Related Questions",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 0,
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Card(
                      elevation: 5,
                      child: Theme(
                         data: Theme.of(context).copyWith(
                          accentColor: Color(0xff0bb783),
                        ),
                        child: ExpansionTile(
                          title: Text("Latest Orders"),
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.",
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Card(
                      elevation: 5,
                      child: Theme(
                         data: Theme.of(context).copyWith(
                          accentColor: Color(0xff0bb783),
                        ),
                        child: ExpansionTile(
                          title: Text("Product Updates"),
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.",
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Card(
                      elevation: 5,
                      child: Theme(
                         data: Theme.of(context).copyWith(
                          accentColor: Color(0xff0bb783),
                        ),
                        child: ExpansionTile(
                          title: Text("Pending Items"),
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                "Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.",
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
