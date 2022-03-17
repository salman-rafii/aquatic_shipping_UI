import 'package:shipping_aquatic/screens/shipping/ShoppingCartScreen.dart';
import 'package:shipping_aquatic/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../AppTheme.dart';

class ShoppingProductScreen extends StatefulWidget {
  final String heroTag, image;

  const ShoppingProductScreen(
      {Key key,
      this.heroTag = "heroTag",
      this.image = './assets/images/shopping/product/product-3.jpg'})
      : super(key: key);

  @override
  _ShoppingProductScreenState createState() => _ShoppingProductScreenState();
}

class _ShoppingProductScreenState extends State<ShoppingProductScreen>
    with SingleTickerProviderStateMixin {
  ThemeData themeData;
  Color primaryColor = Color(0xff0bb789);
  Widget build(BuildContext context) {
    themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(MdiIcons.chevronLeft),
          ),
          title: Text(
            "Febreze AIR",
            style: AppTheme.getTextStyle(
                themeData.appBarTheme.textTheme.headline6,
                fontWeight: 600),
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: MySize.size16),
              child: Icon(MdiIcons.heartOutline, size: MySize.size22),
            )
          ],
        ),
        backgroundColor: themeData.backgroundColor,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: MySize.size24),
                child: Center(
                  child: Hero(
                    tag: widget.heroTag,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(MySize.size8),
                      ),
                      child: Image.asset(
                        widget.image,
                        width: MediaQuery.of(context).size.width * 0.65,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: MySize.size24),
                        child: Text(
                          "Rs. 1,500.00",
                          style: AppTheme.getTextStyle(
                              themeData.textTheme.headline6,
                              fontWeight: 600,
                              letterSpacing: 0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: MySize.size16),
                        child: Text(
                          "Febreze AIR (blue edison)",
                          style: AppTheme.getTextStyle(
                            themeData.textTheme.bodyText2,
                            fontWeight: 500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MySize.size24),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(MySize.size8),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: themeData.colorScheme.primary.withAlpha(24),
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            top: MySize.size12, bottom: MySize.size12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MySize.size8),
                        ),
                        backgroundColor: primaryColor,
                        primary: Colors.white.withAlpha(100),
                        // highlightColor: themeData.colorScheme.primary,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoppingCartScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "BUY NOW",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.bodyText2,
                            fontWeight: 600,
                            color: themeData.colorScheme.onPrimary,
                            letterSpacing: 0.3),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: MySize.size8),
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          MySize.size8,
                        ),
                      ),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.only(
                            top: MySize.size12, bottom: MySize.size12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MySize.size8),
                        ),
                        backgroundColor: Colors.transparent,
                        primary: themeData.colorScheme.primary.withAlpha(100),
                        // highlightColor: Colors.transparent,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoppingCartScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "ADD TO CART",
                        style: AppTheme.getTextStyle(
                            themeData.textTheme.bodyText2,
                            fontWeight: 600,
                            color: primaryColor,
                            letterSpacing: 0.3),
                      ),
                    ),
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
