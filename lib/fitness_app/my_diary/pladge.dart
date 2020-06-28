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

class _PledgeScreenState extends State<PledgeScreen> with TickerProviderStateMixin{
  final PageController _pageController = PageController();
  Animation<double> topBarAnimation;
  int _currentPageIndex;
  bool _localBuyState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          child: DrawerHeader(
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Text(
                'My Pledges',
                textScaleFactor: 1.25,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.fastfood),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  0,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 0
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 0
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.directions_car),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  1,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 1
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 1
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.airplanemode_active),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  2,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 2
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 2
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.local_car_wash),
              onPressed: () => setState(
                () => _pageController.animateToPage(3,
                    duration: _pageAnimDuration, curve: _pageCurve),
              ),
              color: _currentPageIndex == 3
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 3
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.restaurant),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  4,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 4
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 4
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  5,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 5
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 5
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.restore_from_trash),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  6,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 6
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 6
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.ac_unit),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  7,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 7
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 7
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.developer_board),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  8,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 8
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 8
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
            IconButton(
              icon: const Icon(Icons.battery_charging_full),
              onPressed: () => setState(
                () => _pageController.animateToPage(
                  9,
                  duration: _pageAnimDuration,
                  curve: _pageCurve,
                ),
              ),
              color: _currentPageIndex == 9
                  ? _activePageIconColor
                  : _inactivePageIconColor,
              iconSize: _currentPageIndex == 9
                  ? _activePageIconSize
                  : _inactivePageIconSize,
            ),
          ],
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int newPageIndex) =>
                setState(() => _currentPageIndex = newPageIndex),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Padding(
                    padding: _pagePadding,
                    child: Text(
                      'I Will Buy Products That Are Sourced Locally And Not Become A Mindless Consumer Of Cheaply Made Products Imported From Distant Nations.',
                      textScaleFactor: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('No'),
                        SizedBox(
                          width: 100,
                          child: Switch(
                            value: _localBuyState,
                            onChanged: (bool val) =>
                                setState(() => _localBuyState = val),
                          ),
                        ),
                        const Text('Yes'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text('I Drive My Car For'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text('KMs Weekly And I Will Reduce My Car Usage To'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text('KMs Per Week.'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text('I Fly For A Total Of'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text(
                      'Hours Annually And I Want To Reduce My Flying Hours To'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text('Hours.'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text('I  Carpool For A Total Of'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text(
                      'KMs Every Week And I Will Increase My Carpool For A Total Of'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text('KMs Every Week.'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Text('I Eat'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text(
                      'Non-vegetarian Meals Every Week And I Want To Reduce To'),
                  SizedBox(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '0',
                      ),
                    ),
                    width: 100,
                  ),
                  Text('Meals.'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Padding(
                    padding: _pagePadding,
                    child: Text(
                      'I Will Source My Food From Local Sources As Much As Possible.',
                      textScaleFactor: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('No'),
                        SizedBox(
                          width: 100,
                          child: Switch(
                            value: _localBuyState,
                            onChanged: (bool val) =>
                                setState(() => _localBuyState = val),
                          ),
                        ),
                        const Text('Yes'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Padding(
                    padding: _pagePadding,
                    child: Text(
                      'I Want To Reduce My Food Waste As Much As Possible And Want To Compost Whatever I Waste.',
                      textScaleFactor: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('No'),
                        SizedBox(
                          width: 100,
                          child: Switch(
                            value: _localBuyState,
                            onChanged: (bool val) =>
                                setState(() => _localBuyState = val),
                          ),
                        ),
                        const Text('Yes'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Padding(
                    padding: _pagePadding,
                    child: Text(
                      'I Will Set My Heating Temperatures At 18C And My AC Temperature At 24C.',
                      textScaleFactor: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('No'),
                        SizedBox(
                          width: 100,
                          child: Switch(
                            value: _localBuyState,
                            onChanged: (bool val) =>
                                setState(() => _localBuyState = val),
                          ),
                        ),
                        const Text('Yes'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Padding(
                    padding: _pagePadding,
                    child: Text(
                      'I Want To Stop Using A Dryer And Hang-dry My Clothes.',
                      textScaleFactor: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('No'),
                        SizedBox(
                          width: 100,
                          child: Switch(
                            value: _localBuyState,
                            onChanged: (bool val) =>
                                setState(() => _localBuyState = val),
                          ),
                        ),
                        const Text('Yes'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Padding(
                    padding: _pagePadding,
                    child: Text(
                      'I Will Move To Green Energy For My Household Use, As Much As Possible (Solar & Other Renewable Energy Sources).',
                      textScaleFactor: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('No'),
                        SizedBox(
                          width: 100,
                          child: Switch(
                            value: _localBuyState,
                            onChanged: (bool val) =>
                                setState(() => _localBuyState = val),
                          ),
                        ),
                        const Text('Yes'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}