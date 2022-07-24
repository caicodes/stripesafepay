import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// // Note: Get a Material Color Picker

// themeBrand defaults
const appBrandName = 'Stripe SafePay';
const appBrandSlogan = 'accept dollas';

// seed colors
const themeColorPrimaryLight = Color(0xFFD2E7FF);
const Color themeColorPrimary = Color(0xFF3D9AFE);
const themeColorPrimaryBg = Color(0xFF1A3FD8);
const themeColorPrimaryDark = Color(0xFF1A3182);
const themeColorPrimaryDarkBg = Color(0xFF112360);
const themeColorPrimaryAccent = Color(0xFF31F29D);

// standarized / branded

// derived colors
const themeColorAppBarText = themeColorPrimary;
const themeColorAppBarIcon = themeColorPrimaryAccent;
const themeColorAppBarBg = themeColorPrimaryBg;
const themeColorAppScaffoldBg = themeColorPrimaryDark;
const themeColorBottomNavBarBg = themeColorPrimaryBg;
const themeColorDrawerBg = themeColorPrimaryDarkBg;

// branded, necessary?
const themeColorAppLogoStripe = themeColorPrimary;
const themeColorAppLogoSafePay = themeColorPrimaryAccent;

// light theme / default
ThemeData lightTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: GoogleFonts.robotoTextTheme()
      .apply(bodyColor: Colors.white, displayColor: Colors.white),
  appBarTheme: const AppBarTheme(
      color: themeColorAppBarBg,
      iconTheme: IconThemeData(color: themeColorPrimaryAccent)),
  scaffoldBackgroundColor: themeColorAppScaffoldBg,
  drawerTheme: const DrawerThemeData(backgroundColor: themeColorDrawerBg),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent, // themeColorBottomNavBarBg,
    elevation: 2,
    unselectedItemColor: themeColorPrimaryLight,
    selectedItemColor: themeColorPrimary,
  ),
  cardColor: themeColorPrimary,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: themeColorPrimaryAccent,
    // foregroundColor: themeColorPrimaryDarkBg,
  ),
);




// ThemeData lightTheme = ThemeData(
//   textTheme: GoogleFonts.montserratTextTheme()
//       .apply(bodyColor: Colors.white, displayColor: Colors.white),
//   brightness: Brightness.dark,
//   // primarySwatch: Colors.blue,
//   primaryColor: colorPrimary,
//   scaffoldBackgroundColor: colorBackground,
//   floatingActionButtonTheme: const FloatingActionButtonThemeData(
//     backgroundColor: colorPrimary,
//     foregroundColor: Colors.white,
//   ),

//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(colorPrimary),
//         padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//           const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
//         ),
//         shape:
//             MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder())),
//   ),
// );

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   // primarySwatch: Colors.blue,
//   primaryColor: colorPrimary,
//   floatingActionButtonTheme: const FloatingActionButtonThemeData(
//     backgroundColor: colorPrimary,
//   ),
//   textTheme: GoogleFonts.montserratTextTheme()
//       .apply(bodyColor: Colors.white, displayColor: Colors.white),
//   elevatedButtonTheme: ElevatedButtonThemeData(
//     style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(colorPrimary),
//         padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//           const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
//         ),
//         shape:
//             MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder())),
//   ),
//   switchTheme: SwitchThemeData(
//     trackColor: MaterialStateProperty.all(colorPrimary),
//     thumbColor: MaterialStateProperty.all(colorAccent),
//   ),
// );
