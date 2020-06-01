import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 16
              : 21;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'UPBEET COURSE DETAILS',
              style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: titleSize, height: 0.9),
                textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'blah blah blah',
              style: TextStyle(
                fontSize: descriptionSize, height: 1.7),
                textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
