import 'package:flutter/material.dart';
import 'package:stripesafepay/components/bottom_navigation_bar_main.dart';
import 'package:stripesafepay/components/drawer_main.dart';
import 'package:stripesafepay/components/drawer_user.dart';
import 'package:stripesafepay/theme/styleguide/theme_styleguide.dart';
import 'package:stripesafepay/theme/theme_constants.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: appLogoSVG(width: 160), actions: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ]),
      drawer: const Drawer(
        child: DrawerMain(),
      ),
      endDrawer: const Drawer(
        child: DrawerUser(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // refactor to solo file
              appStyleGuideBranding(),

              // refactor to solo file
              appStyleGuideTypography(),

// elevated button with icon
              Padding(
                padding: const EdgeInsets.all(34.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromWidth(233),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 21,
                    ),
                    primary: themeColorPrimaryDarkBg,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 21, vertical: 13),
                    alignment: Alignment.center,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // const Text(
                      //   'stripe',
                      //   style: TextStyle(color: themeColorPrimary),
                      // ),
                      // const Text(
                      //   'safepay',
                      //   style: TextStyle(color: themeColorPrimaryAccent),
                      // ),
                      appLogoSVG(width: 144),
                      // addHorizontalSpace(2),
                      // appIconSVG(width: 18),
                    ],
                  ),
                ),
              ),
              // refactor to solo file
              appStyleGuideButtons(),

              // list of buttons
              appButton(title: 'App Primary Button'),
              appButtonWarn(title: 'App Warn Button'),
              appButtonDanger(title: 'App Danger Button'),
              appButtonSuccess(title: 'App Success Button'),
              appButtonAccent(title: 'App Accent'),

              // components
              appStyleGuideComponents(),
              appStyleGuideForms(),
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavigationBarMain(),
    );
  }
}
