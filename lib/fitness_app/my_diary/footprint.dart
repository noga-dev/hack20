import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Footprint extends StatefulWidget {
  const Footprint({Key key, this.animationController}) : super(key: key);

  final AnimationController animationController;
  @override
  _Footprint createState() => _Footprint();
}

class _Footprint extends State<Footprint> with TickerProviderStateMixin {
  Animation<double> topBarAnimation;
  bool _isloading = true;

  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome',
      home: Scaffold(
        body: Stack(
          children: [
            WebView(
              initialUrl: "https://www.footprintcalculator.org/food1",
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (String done) =>
                  setState(() => _isloading = false),
            ),
            _isloading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
