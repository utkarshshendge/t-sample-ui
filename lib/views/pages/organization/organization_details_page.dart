import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/organization_model.dart';
import 'package:talawa_sample_ui/views/widgets/custom_bottom_bar.dart';
import 'package:talawa_sample_ui/views/widgets/custom_buttons.dart';

import '../../../app_theme.dart';

class OrganizationDetailsPage extends StatefulWidget {
  final OrganizationModel orgModel;

  const OrganizationDetailsPage({Key key, this.orgModel}) : super(key: key);

  @override
  _OrganizationDetailsPageState createState() =>
      _OrganizationDetailsPageState();
}

class _OrganizationDetailsPageState extends State<OrganizationDetailsPage> {
  final double infoHeight = 364.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
        //extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 50,
          title: Text(
            'Details',
            style: TextStyle(
                color: Colors.black87, fontFamily: 'CM', fontSize: 22),
          ),
          // backgroundColor: TalawaTheme.secondaryColor1,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios,
              color: TalawaTheme.SecondaryColorLightShade,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  widget.orgModel.imagePath,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 3.5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: TalawaTheme.grey.withOpacity(0.2),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 1.45,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 32.0, left: 18, right: 16),
                          child: Text(
                            widget.orgModel.title,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            getDetailsBoxUI(
                                'Admin ${widget.orgModel.adminInfo}',
                                Icon(
                                  Icons.verified_user,
                                  color: TalawaTheme.secondaryColor1,
                                )),
                            widget.orgModel.ispublic
                                ? getDetailsBoxUI(
                                    'Public',
                                    Icon(
                                      Icons.lock_open_outlined,
                                      color: TalawaTheme.secondaryColor1,
                                    ))
                                : getDetailsBoxUI(
                                    'Private',
                                    Icon(Icons.lock_outline,
                                        color: TalawaTheme.buildLightTheme()
                                            .errorColor
                                            .withOpacity(.8))),
                            getDetailsBoxUI(
                                'Not a Member',
                                Icon(
                                  Icons.cancel_outlined,
                                  color: TalawaTheme.secondaryColor1,
                                ))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, top: 8, bottom: 8),
                          child: Text(
                            'Our organization helps App developers overcome fear of app developemet by giving them moral support. We also send them regular notifications so they can connection with time and space :)',
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 16,
                              color: TalawaTheme.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          child: CustomButton(
            buttonColor: TalawaTheme.primatyColorShadeLightShade,
            label: "Join Organization",
          ),
        ),
      );
    });
  }

  Widget getDetailsBoxUI(String text1, Icon boxIcon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: TalawaTheme.grey.withOpacity(0.2),
                offset: const Offset(1.1, 1.1),
                blurRadius: 8.0),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              boxIcon
            ],
          ),
        ),
      ),
    );
  }
}
