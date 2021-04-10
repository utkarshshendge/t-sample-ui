import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/sliding_button_model.dart';
import 'package:talawa_sample_ui/views/pages/events/calendar/end_calendar.dart';
import 'package:talawa_sample_ui/views/pages/events/calendar/start_calendar.dart';

import '../../../app_theme.dart';

class AddEventPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddEventPageState();

  static AddEventPageState of(BuildContext context) =>
      context.findAncestorStateOfType<AddEventPageState>();
}

class AddEventPageState extends State<AddEventPage> {
  String _startDateString = "Not set yet";
  String _endDateString = "Not set yet";

  set startString(String value) => setState(() => _startDateString = value);
  set endString(String value) => setState(() => _endDateString = value);

  List<SlidingButtonModel> buttonList = SlidingButtonModel.slidingButtonList;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TalawaTheme.buildLightTheme().backgroundColor,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text("Create Event",
              style: TextStyle(
                  color: Colors.black87, fontFamily: 'CM', fontSize: 22)),
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      // color: Colors.white,
                      width: MediaQuery.of(context).size.width - 50,
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
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Event Name',
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
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      // color: Colors.white,
                      width: MediaQuery.of(context).size.width - 50,
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
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Event Description',
                          border: InputBorder.none,
                          helperStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: TalawaTheme.customGrey,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            letterSpacing: 0.2,
                            color: TalawaTheme.customGrey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      // color: Colors.white,
                      width: MediaQuery.of(context).size.width - 50,
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
                      child: TextFormField(
                        style: TextStyle(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'Event Location',
                          border: InputBorder.none,
                          helperStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: TalawaTheme.customGrey,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            letterSpacing: 0.2,
                            color: TalawaTheme.customGrey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: TalawaTheme.secondaryColor1,
                      height: 1,
                    ),

                    selectStartDate(),
                    const Divider(
                      color: TalawaTheme.secondaryColor1,
                      height: 1,
                    ),
                    selectEndDate(),
                    const Divider(
                      color: TalawaTheme.secondaryColor1,
                      height: 1,
                    ),
                    moreOptionsUI(),

                    // Container(height: 500, child: TempCalendar2())
                  ],
                ),
              ),
            ),
            const Divider(
              color: TalawaTheme.secondaryColor1,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 8),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: TalawaTheme.buildLightTheme().primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 8,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Add Event',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget selectStartDate() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select Start Date',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              Text(_startDateString)
            ],
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height / 4,
            child: StartCalendar()),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }

  Widget selectEndDate() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Select End Date',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              Text(_endDateString)
            ],
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height / 4,
            child: EndCalendar()),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget moreOptionsUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
          child: Text(
            'More Options',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            children: slidingButtonUI(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  List<Widget> slidingButtonUI() {
    final List<Widget> empty = [];
    for (int i = 0; i < buttonList.length; i++) {
      final SlidingButtonModel date = buttonList[i];
      empty.add(
        InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          onTap: () {
            setState(() {
              buttonStatus(i);
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    date.titleTxt,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                CupertinoSwitch(
                  activeColor: date.isSelected
                      ? TalawaTheme.buildLightTheme().primaryColor
                      : Colors.grey.withOpacity(0.6),
                  onChanged: (bool value) {
                    setState(() {
                      buttonStatus(i);
                    });
                  },
                  value: date.isSelected,
                ),
              ],
            ),
          ),
        ),
      );
      if (i == 0) {
        empty.add(const Divider(
          height: 1,
        ));
      }
    }
    return empty;
  }

  void buttonStatus(int index) {
    if (index == 0) {
      if (buttonList[0].isSelected) {
        buttonList.forEach((d) {
          d.isSelected = false;
        });
      } else {
        buttonList.forEach((d) {
          d.isSelected = true;
        });
      }
    } else {
      buttonList[index].isSelected = !buttonList[index].isSelected;

      int count = 0;
      for (int i = 0; i < buttonList.length; i++) {
        if (i != 0) {
          final SlidingButtonModel data = buttonList[i];
          if (data.isSelected) {
            count += 1;
          }
        }
      }

      if (count == buttonList.length - 1) {
        buttonList[0].isSelected = true;
      } else {
        buttonList[0].isSelected = false;
      }
    }
  }
}
