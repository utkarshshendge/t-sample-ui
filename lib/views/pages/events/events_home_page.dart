import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/event_model.dart';
import 'package:talawa_sample_ui/views/pages/events/add_event.dart';
import 'package:talawa_sample_ui/views/pages/events/event_list_item.dart';

import '../../../app_theme.dart';
import '../../../app_theme.dart';
import '../../widgets/tab_header.dart';

class EventsHomePage extends StatefulWidget {
  @override
  _EventsHomePageState createState() => _EventsHomePageState();
}

class _EventsHomePageState extends State<EventsHomePage> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TalawaTheme.buildLightTheme().backgroundColor,
      appBar: AppBar(
        backgroundColor: TalawaTheme.buildLightTheme().backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Text(
          'Events',
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
        onTap: () {},
        child: Column(
          children: <Widget>[
            Expanded(
              child: NestedScrollView(
                controller: _scrollController,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor:
                                            TalawaTheme.secondaryColor1,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Text("Event yet to start",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 10,
                                        backgroundColor:
                                            TalawaTheme.buildLightTheme()
                                                .primaryColor,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Event Started",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }, childCount: 1),
                    ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    child: getOrgList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddEventPage()),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35,
        ),
        backgroundColor: TalawaTheme.buildLightTheme().primaryColor,
      ),
    );
  }

  Widget getOrgList() {
    return ListView.builder(
      itemCount: eventList.length,
      padding: const EdgeInsets.only(top: 8),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return EventItem(index: index);
      },
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
                    labelText: 'Search Event',
                    border: InputBorder.none,
                    helperStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: TalawaTheme.customGrey,
                    ),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: TalawaTheme.customGrey,
                    ),
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
                  blurRadius: 6.0),
            ],
          ),
        ),
        Container(
          height: 100,
          color: TalawaTheme.buildLightTheme().backgroundColor,
          child: getpersistentAppBarUI(),
        ),
        Divider(
          height: 1,
        )
      ],
    );
  }
}
