import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_basics/views/home/home_content_desktop.dart';
import 'package:web_basics/views/home/home_content_mobile.dart';
import 'package:web_basics/widgets/navigation_bar/navigation_bar.dart';
import 'package:web_basics/widgets/centered_view/centered_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentDesktop(),
              )
            ),
          ],
        ),
      ),
    );
  }
}
