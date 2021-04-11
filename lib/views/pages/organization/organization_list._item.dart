import 'package:flutter/material.dart';
import 'package:talawa_sample_ui/views/view_models/organization_model.dart';

import '../../../app_theme.dart';

class OrgItem extends StatelessWidget {
  const OrgItem({
    Key key,
    this.orgModel,
  }) : super(key: key);

  final OrganizationModel orgModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: Text(
                                  orgModel.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 6, left: 10, right: 10, bottom: 6),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          orgModel.ispublic
                                              ? Icon(
                                                  Icons.lock_open_outlined,
                                                  color: TalawaTheme
                                                      .primatyColorShadeLightShade
                                                      .withOpacity(0.8),
                                                  size: 20,
                                                )
                                              : Icon(
                                                  Icons.lock_outline,
                                                  color: TalawaTheme
                                                          .buildLightTheme()
                                                      .errorColor
                                                      .withOpacity(0.8),
                                                  size: 20,
                                                ),
                                          Text(
                                            orgModel.ispublic
                                                ? 'Public'
                                                : 'Private',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w200,
                                              fontSize: 12,
                                              color: TalawaTheme.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.people,
                                          color: TalawaTheme
                                              .primatyColorShadeLightShade
                                              .withOpacity(0.8),
                                          size: 20,
                                        ),
                                        Text(
                                          '${orgModel.peopleNumber} people',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 12,
                                            color: TalawaTheme.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          child: Image.asset(orgModel.imagePath),
        ),
      ],
    );
  }
}
