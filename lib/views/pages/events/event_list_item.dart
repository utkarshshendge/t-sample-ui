import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:talawa_sample_ui/views/view_models/event_model.dart';
import '../../../app_theme.dart';

class EventItem extends StatefulWidget {
  final int index;

  const EventItem({Key key, this.index}) : super(key: key);
  @override
  _EventItemState createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            gradient: eventList[widget.index].isStarted
                ? LinearGradient(
                    colors: [
                      TalawaTheme.buildLightTheme().primaryColor,
                      TalawaTheme.buildLightTheme()
                          .primaryColor
                          .withOpacity(0.5),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp)
                : LinearGradient(
                    colors: [
                      TalawaTheme.secondaryColor1,
                      TalawaTheme.secondaryColor1.withOpacity(0.5)
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: eventList[widget.index].isStarted
                      ? TalawaTheme.buildLightTheme().primaryColor
                      : TalawaTheme.secondaryColor1,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  )),
              height: 100,
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    eventList[widget.index].startDate,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black, fontFamily: "CM"),
                  ),
                  Text(
                    "to",
                    style: TextStyle(
                        fontSize: 15, color: Colors.black, fontFamily: "CM"),
                  ),
                  Text(
                    eventList[widget.index].endDate,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black, fontFamily: "CM"),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(eventList[widget.index].eventName,
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      )),
                  Text(
                    'Coordinator: ${eventList[widget.index].coordinatorName}',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      letterSpacing: 0.27,
                      color: Colors.black,
                    ),
                  ),
                  Text('Org: ${eventList[widget.index].organizationName}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        letterSpacing: 0.27,
                        color: Colors.black,
                      )),
                  Text(eventList[widget.index].status,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        letterSpacing: 0.27,
                        color: Colors.black,
                      )),
                  new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 200,
                    animation: true,
                    lineHeight: 10.0,
                    animationDuration: 2000,
                    backgroundColor: Colors.white,
                    percent: eventList[widget.index].percentDone / 100,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.blueAccent.withOpacity(0.8),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
