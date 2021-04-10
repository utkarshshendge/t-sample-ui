import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/organization_model.dart';
import 'package:talawa_sample_ui/views/pages/organization/organization_details_page.dart';

import '../../../app_theme.dart';
import '../../widgets/tab_header.dart';
import 'organization_list._item.dart';

class OrganizationHomePage extends StatefulWidget {
  @override
  _OrganizationHomePageState createState() => _OrganizationHomePageState();
}

class _OrganizationHomePageState extends State<OrganizationHomePage> {
  List pinnedPostSlider = [
    "assets/images/feed0.jpg",
    "assets/images/feed1.jpg",
    "assets/images/feed2.jpg",
  ];

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: TalawaTheme.buildLightTheme().backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text(
          'Organizations',
          style:
              TextStyle(color: Colors.black87, fontFamily: 'CM', fontSize: 22),
        ),
        actions: [
          Image.asset(
            'assets/images/logo.png',
            height: 50,
          )
        ],
      ),
      body: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: NestedScrollView(
                controller: _scrollController,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: ContestTabHeader(
                        persistentAppbar(),
                      ),
                    ),
                  ];
                },
                body: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    child: getOrgList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getOrgList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Near you,',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        Flexible(
          child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: GridView(
                padding: const EdgeInsets.all(8),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: List<Widget>.generate(
                  OrganizationModel.OrgList.length,
                  (int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrganizationDetailsPage(
                                  orgModel: OrganizationModel.OrgList[index])),
                        );
                      },
                      child: OrgItem(
                        orgModel: OrganizationModel.OrgList[index],
                      ),
                    );
                  },
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30.0,
                  crossAxisSpacing: 30.0,
                  childAspectRatio: 0.8,
                ),
              )),
        )
      ],
    );
  }

  Widget getpersistentAppBarUI() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: <Widget>[
            Text(
              'Filter',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.sort, color: TalawaTheme.secondaryColor1),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.only(left: 16, right: 16),
          width: 250,
          decoration: BoxDecoration(
            color: TalawaTheme.buildLightTheme().backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, 2),
                  blurRadius: 8.0),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  style: TextStyle(
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Search Organization',
                    border: InputBorder.none,
                    helperStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: TalawaTheme.customGrey),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        letterSpacing: 0.2,
                        color: TalawaTheme.customGrey),
                  ),
                ),
              ),
              SizedBox(
                  width: 60,
                  height: 60,
                  child:
                      Icon(Icons.search, color: TalawaTheme.secondaryColor1)),
            ],
          ),
        ),
      ],
    );
  }

  Widget persistentAppbar() {
    return Stack(
      children: <Widget>[
        Container(
          height: 24,
          decoration: BoxDecoration(
            color: TalawaTheme.buildLightTheme().backgroundColor,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(0, -2),
                  blurRadius: 8.0),
            ],
          ),
        ),
        Container(
          height: 100,
          color: TalawaTheme.buildLightTheme().backgroundColor,
          child: getpersistentAppBarUI(),
        ),
      ],
    );
  }
}
