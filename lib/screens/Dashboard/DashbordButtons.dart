import 'package:flutter_svg/flutter_svg.dart';
import 'package:shipping_aquatic/screens/Dashboard/About_Us.dart';
import 'package:shipping_aquatic/screens/Dashboard/ActiveShipmentsView.dart';
import 'package:shipping_aquatic/screens/Dashboard/AverageCostCardView.dart';
import 'package:shipping_aquatic/screens/Dashboard/ContactUs.dart';
import 'package:shipping_aquatic/screens/Dashboard/FAQ.dart';
// import 'package:shipping_aquatic/screens/Dashboard/ContactUs.dart';
import 'package:shipping_aquatic/screens/Dashboard/QuickQuoteDashboardView.dart';
import 'package:shipping_aquatic/screens/Dashboard/ShipmentsCardView.dart';
import 'package:shipping_aquatic/screens/Dashboard/SpendingsCardView.dart';
import 'package:shipping_aquatic/screens/shipping/ShoppingProductScreen.dart';
import 'package:shipping_aquatic/utils/Generator.dart';
import 'package:shipping_aquatic/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../AppTheme.dart';

class DashboardButtons extends StatefulWidget {
  final BuildContext rootContext;

  const DashboardButtons({Key key, @required this.rootContext})
      : super(key: key);

  @override
  _DashboardButtonsState createState() => _DashboardButtonsState();
}

class _DashboardButtonsState extends State<DashboardButtons>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<DashboardButtons> {
  ThemeData themeData;

  @override
  bool get wantKeepAlive => true;

  Widget build(BuildContext context) {
    super.build(context);
    themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: themeData.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  userDashboardButton(
                    context,
                    "assets/DashboardIcons/spendings_new2.svg",
                    "Spendings",
                    SpendingsCardView(),
                    10.0,
                  ),
                  userDashboardButton(
                    context,
                    "assets/DashboardIcons/shipments_new3.svg",
                    "Shipments",
                    ShipmentsCardView(),
                    10.0,
                  ),
                ],
              ),
              Row(
                children: [
                  userDashboardButton(
                    context,
                    "assets/DashboardIcons/average_cost_new5.svg",
                    "Avg. Cost",
                    AverageCostCardView(),
                    16.0,
                  ),
                  userDashboardButton(
                    context,
                    "assets/DashboardIcons/quick_quote_new10.svg",
                    "Quick Quote",
                    QuickQuoteDashboardView(),
                    15.0,
                  ),
                ],
              ),
              Row(
                children: [
                  userDashboardButton(
                      context,
                      "assets/DashboardIcons/active_shipments_new.svg",
                      "Active Shipments",
                      ActiveShipmentsView(),
                      16.0),
                  userDashboardButton(
                    context,
                    "assets/DashboardIcons/contact_us_final.svg",
                    "Contact Us",
                    ContactUs(),
                    10.0,
                  ),
                ],
              ),
              Row(
                children: [
                  userDashboardButton(context, "assets/DashboardIcons/faq9.svg",
                      "FAQ's", FAQ(), 16.0),
                  userDashboardButton(
                    context,
                    "assets/DashboardIcons/about_us10.svg",
                    "About Us",
                    AboutUs(),
                    12.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductListWidget extends StatefulWidget {
  final String name, image, shopName;
  final double star;
  final int price;
  final BuildContext buildContext;

  const _ProductListWidget(
      {Key key,
      @required this.name,
      @required this.image,
      @required this.shopName,
      @required this.star,
      @required this.price,
      @required this.buildContext})
      : super(key: key);
  @override
  __ProductListWidgetState createState() => __ProductListWidgetState();
}

class __ProductListWidgetState extends State<_ProductListWidget> {
  ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    themeData = Theme.of(context);
    String key = Generator.randomString(10);
    return InkWell(
      onTap: () {
        Navigator.push(
          widget.buildContext,
          MaterialPageRoute(
            builder: (context) => ShoppingProductScreen(
              heroTag: key,
              image: widget.image,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: themeData.cardTheme.color,
          borderRadius: BorderRadius.all(
            Radius.circular(MySize.size8),
          ),
          boxShadow: [
            BoxShadow(
              color: themeData.cardTheme.shadowColor.withAlpha(26),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.all(MySize.size16),
        child: Row(
          children: <Widget>[
            Hero(
              tag: key,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(MySize.size8),
                ),
                child: Image.asset(
                  widget.image,
                  height: MySize.size90,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MySize.size90,
                margin: EdgeInsets.only(left: MySize.size16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.name,
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.subtitle1,
                              fontWeight: 600,
                              letterSpacing: 0),
                        ),
                        Icon(
                          MdiIcons.heart,
                          color:
                              themeData.colorScheme.onBackground.withAlpha(80),
                          size: 22,
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Generator.buildRatingStar(
                            rating: widget.star,
                            size: MySize.size16,
                            inactiveColor: themeData.colorScheme.onBackground),
                        Container(
                          margin: EdgeInsets.only(left: MySize.size4),
                          child: Text(
                            widget.star.toString(),
                            style: AppTheme.getTextStyle(
                                themeData.textTheme.bodyText1,
                                fontWeight: 600),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              MdiIcons.storeOutline,
                              color: themeData.colorScheme.onBackground
                                  .withAlpha(200),
                              size: MySize.size20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: MySize.size4),
                              child: Text(
                                widget.shopName,
                                style: AppTheme.getTextStyle(
                                    themeData.textTheme.bodyText2,
                                    color: themeData.colorScheme.onBackground
                                        .withAlpha(200),
                                    fontWeight: 500),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "\$ " + widget.price.toString(),
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.bodyText2,
                              fontWeight: 700),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Expanded userDashboardButton(
    BuildContext context, svgUrl, textLabel, route, containerPadding) {
  return Expanded(
    flex: 2,
    child: Container(
      margin: EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 6,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return route;
                },
              ),
            );
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(containerPadding),
                margin: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.height * 0.2,
                // width: MediaQuery.of(context).size.width * 0.3,

                // color: Colors.orange,
                // margin: EdgeInsets.all(25.0),
                child: SvgPicture.asset(
                  svgUrl,
                  // color: Colors.orange,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                child: Text(
                  textLabel,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
