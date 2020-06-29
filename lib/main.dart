/*import 'dart:io';
import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'navigation_home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: NavigationHomeScreen(),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:best_flutter_ui_templates/form/delayed_animation.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:best_flutter_ui_templates/form/userdetail.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final int delayedAmount = 500;
  double _scale;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    _scale = 1 - _controller.value;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xFF8185E2),
          //backgroundColor: Color(0xffb74093),
//        backgroundColor: Colors.deepPurpleAccent
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  AvatarGlow(
                    endRadius: 90,
                    duration: Duration(seconds: 2),
                    glowColor: Colors.white24,
                    repeat: true,
                    repeatPauseDuration: Duration(seconds: 2),
                    startDelay: Duration(seconds: 1),
                    child: Material(
                      elevation: 8.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[100],
                        // child: FlutterLogo(
                        //   size: 50.0,
                        // ),
                        child: Image.asset(
                          //'assets/images/earth.png',
                          'assets/fitness_app/gaia.png',
                          fit: BoxFit.none,
                          scale: 4.7,
                        ),
                        radius: 50.0,
                      ),
                    ),
                  ),
                  DelayedAnimation(
                    child: Text(
                      "Hi There",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          color: color),
                    ),
                    delay: delayedAmount + 1000,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DelayedAnimation(
                    child: Text(
                      "I'm Earth",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: color),
                    ),
                    delay: delayedAmount + 2000,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  DelayedAnimation(
                    child: Text(
                      "Would you like to help me?",
                      style: TextStyle(fontSize: 26.0, color: color),
                    ),
                    delay: delayedAmount + 3000,
                  ),
                  SizedBox(
                    height: 75.0,
                  ),
                  Builder(
                      builder: (context) => DelayedAnimation(
                            child: GestureDetector(
                              onTapDown: _onTapDown,
                              onTapCancel: _onTapCancel,
                              onTapUp: _onTapUp,
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute<Null>(
                                        builder: (BuildContext context) {
                                  return UserDetail();
                                }));
                              },
                              child: Transform.scale(
                                scale: _scale,
                                child: Container(
                                  height: 60,
                                  width: 270,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.white,
                                  ),
                                  // child: Center(
                                  //   child: Text(
                                  //     'Pledge',
                                  //     style: TextStyle(
                                  //       fontSize: 20.0,
                                  //       fontWeight: FontWeight.bold,
                                  //       color: Color(0xFF8185E2),
                                  //     ),
                                  //   ),
                                  // ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      //ignore: missing_required_param
                                      MaterialButton(
                                        child: Center(
                                            child: Text(
                                          'Pledge',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF8185E2),
                                          ),
                                        )),
                                        // onPressed: () {
                                        //   Navigator.push(
                                        //                              //     context,
                                        //                              //     MaterialPageRoute(builder: (context) => FitnessAppHomeScreen()),
                                        //                              //   );
                                        // },/*{
                                        //                          Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetail()));
                                        //                            },*/
//                              onPressed: () {
//                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetail()));
//                              },
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            delay: delayedAmount + 4000,
                          )),
                  SizedBox(
                    height: 50.0,
                  ),
                  DelayedAnimation(
                    child: Text(
                      "".toUpperCase(),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: color),
                    ),
                    delay: delayedAmount + 5000,
                  ),
                ],
              ),
            ),
          )
          //  Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('Tap on the Below Button',style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
          //     SizedBox(
          //       height: 20.0,
          //     ),
          //      Center(

          //   ),
          //   ],

          // ),
          ),
    );
  }

//  Widget get _animatedButtonUI =>

//Home
  void _onTapDown(TapDownDetails details) => _controller.forward();

  void _onTapCancel() => _controller.reverse();

  void _onTapUp(TapUpDetails details) => _controller.reverse();
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
