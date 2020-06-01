import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_basics/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:web_basics/widgets/call_to_action/call_to_action_tablet_destop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile('Join'),
      tablet: CallToActionTabletDesktop('Join'),
    );
  }
}
