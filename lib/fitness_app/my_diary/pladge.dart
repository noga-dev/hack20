// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class Pladge extends StatefulWidget {
//   const Pladge({Key key, this.animationController}) : super(key: key);

//   final AnimationController animationController;
//   @override
//   _Pladge createState() => _Pladge();
// }

// class _Pladge extends State<Pladge>
//     with TickerProviderStateMixin {
//   Animation<double> topBarAnimation;

//   List<Widget> listViews = <Widget>[];
//   final ScrollController scrollController = ScrollController();
//   double topBarOpacity = 0.0;
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'welcome',
//       home: Scaffold(
//        body: WebView(
//          initialUrl: "https://www.footprintcalculator.org/food1",
//          javascriptMode: JavascriptMode.unrestricted,
//        ),
//       ),
//     );
//    }
// }

import 'package:flutter/material.dart';

const Duration _pageAnimDuration = Duration(milliseconds: 500);
const Curve _pageCurve = Curves.linearToEaseOut;
const EdgeInsets _pagePadding = EdgeInsets.all(50);
const double _activePageIconSize = 25;
const double _inactivePageIconSize = 20;
const Color _activePageIconColor = Colors.black;
const Color _inactivePageIconColor = Colors.grey;

class PledgeScreen extends StatefulWidget {
  const PledgeScreen({Key key, this.animationController}) : super(key: key);
  final AnimationController animationController;
  @override
  _PledgeScreenState createState() => _PledgeScreenState();
}

class _PledgeScreenState extends State<PledgeScreen>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController();
  Animation<Offset> offset;
  int _currentPageIndex = 0;
  bool _localBuyState = false;
  bool _localSourceState = false;
  bool _localWasteState = false;
  bool _localTempState = false;
  bool _localDryerState = false;
  bool _localGreenState = false;

  @override
  void initState() {
    super.initState();

    offset = Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0))
        .animate(widget.animationController);

    widget.animationController.forward();
  }

  @override
  void dispose() {
    widget.animationController.reverse();
    super.dispose();
  }

  void _goToPage(int pageIdx) => _pageController
      .animateToPage(
        pageIdx,
        duration: _pageAnimDuration,
        curve: _pageCurve,
      )
      .then((value) => setState(() => null));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offset,
      child: Column(
        children: <Widget>[
          SizedBox(
            child: DrawerHeader(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.only(bottom: 0, top: 20),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'My Pledges',
                        textScaleFactor: 1.25,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 75),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(150),
                            bottomLeft: Radius.circular(150),
                          ),
                          gradient: RadialGradient(
                            radius: 6,
                            colors: [
                              Colors.white,
                              Colors.transparent,
                            ],
                          ),
                        ),
                        child: Container(
                            child: Center(
                          child: Text(
                            'Do these things incrementally\nfor optimal results',
                            textAlign: TextAlign.center,
                          ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.fastfood),
                  onPressed: () => _goToPage(0),
                  color: _currentPageIndex == 0
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 0
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.directions_car),
                  onPressed: () => _goToPage(1),
                  color: _currentPageIndex == 1
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 1
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.airplanemode_active),
                  onPressed: () => _goToPage(2),
                  color: _currentPageIndex == 2
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 2
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.local_car_wash),
                  onPressed: () => _goToPage(3),
                  color: _currentPageIndex == 3
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 3
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.restaurant),
                  onPressed: () => _goToPage(4),
                  color: _currentPageIndex == 4
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 4
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () => _goToPage(5),
                  color: _currentPageIndex == 5
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 5
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.restore_from_trash),
                  onPressed: () => _goToPage(6),
                  color: _currentPageIndex == 6
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 6
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.ac_unit),
                  onPressed: () => _goToPage(7),
                  color: _currentPageIndex == 7
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 7
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.developer_board),
                  onPressed: () => _goToPage(8),
                  color: _currentPageIndex == 8
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 8
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
                IconButton(
                  icon: const Icon(Icons.battery_charging_full),
                  onPressed: () => _goToPage(9),
                  color: _currentPageIndex == 9
                      ? _activePageIconColor
                      : _inactivePageIconColor,
                  iconSize: _currentPageIndex == 9
                      ? _activePageIconSize
                      : _inactivePageIconSize,
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int newPageIndex) =>
                  setState(() => _currentPageIndex = newPageIndex),
              children: <Widget>[
                _BoolPledge(
                  (bool val) => setState(() => _localBuyState = val),
                  _localBuyState,
                  'I Will Buy Products That Are Sourced Locally And Not Become A Consumer Of Cheaply Made Imported Products.',
                ),
                _ValPledge(
                  'I Drive My Car For',
                  'KMs Weekly And I Will Reduce My Car Usage To',
                  'KMs Per Week.',
                ),
                _ValPledge(
                  'I Fly For A Total Of',
                  'Hours Annually And I Want To Reduce My Flying Hours To',
                  'Hours.',
                ),
                _ValPledge(
                  'I  Carpool For A Total Of',
                  'KMs Every Week And I Will Increase My Carpool For A Total Of',
                  'KMs Every Week.',
                ),
                _ValPledge(
                  'I Eat',
                  'Non-vegetarian Meals Every Week And I Want To Reduce To',
                  'Meals.',
                ),
                _BoolPledge(
                  (bool val) => setState(() => _localSourceState = val),
                  _localSourceState,
                  'I Will Source My Food From Local Sources As Much As Possible.',
                ),
                _BoolPledge(
                  (bool val) => setState(() => _localWasteState = val),
                  _localWasteState,
                  'I Want To Reduce My Food Waste As Much As Possible And Want To Compost Whatever I Waste.',
                ),
                _BoolPledge(
                  (bool val) => setState(() => _localTempState = val),
                  _localTempState,
                  'I Will Set My Heating Temperatures At 18C And My AC Temperature At 24C.',
                ),
                _BoolPledge(
                  (bool val) => setState(() => _localDryerState = val),
                  _localDryerState,
                  'I Want To Stop Using A Dryer And Hang-dry My Clothes.',
                ),
                _BoolPledge(
                  (bool val) => setState(() => _localGreenState = val),
                  _localGreenState,
                  'I Will Move To Green Energy For My Household Use, As Much As Possible (Solar & Other Renewable Energy Sources).',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BoolPledge extends StatelessWidget {
  final Function func;
  final bool state;
  final String text;

  _BoolPledge(this.func, this.state, this.text);

  @override
  Widget build(BuildContext context) {
    return _PageWrapper(
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .4,
              padding: _pagePadding,
              child: Text(
                text,
                textAlign: TextAlign.center,
                textScaleFactor: 1.75,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('No'),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: Switch(
                      value: state,
                      onChanged: func,
                    ),
                  ),
                  const Text('Yes'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ValPledge extends StatelessWidget {
  final double padding = 20;
  final String text1, text2, text3;

  _ValPledge(this.text1, this.text2, this.text3);

  @override
  Widget build(BuildContext context) {
    return _PageWrapper(
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              text1,
              textScaleFactor: 1.5,
            ),
            SizedBox(
              height: padding,
            ),
            const SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
              ),
              width: 100,
            ),
            SizedBox(
              height: padding,
            ),
            Text(
              text2,
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: padding,
            ),
            const SizedBox(
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: '0',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
              ),
              width: 100,
            ),
            SizedBox(
              height: padding,
            ),
            Text(
              text3,
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class _PageWrapper extends StatelessWidget {
  final Widget child;
  _PageWrapper(this.child);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: double.infinity,
          child: Icon(Icons.chevron_left),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey[600],
                Colors.grey[300],
                Colors.grey[100],
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        Expanded(
          child: child,
        ),
        Container(
          height: double.infinity,
          child: Icon(Icons.chevron_right),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey[100],
                Colors.grey[300],
                Colors.grey[600],
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ],
    );
  }
}
