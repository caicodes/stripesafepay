import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stripesafepay/theme/theme_helpers.dart';
import 'package:stripesafepay/theme/theme_constants.dart';

const String svgLogoAsset = 'assets/images/brand/logo-on-dark.svg';
const String svgIconAsset = 'assets/images/brand/icon-on-dark.svg';

Widget appLogoSVG({required double width}) {
  return SvgPicture.asset(
    svgLogoAsset,
    semanticsLabel: 'Stripe SafePay',
    width: width,
  );
}

Widget appIconSVG({required double width}) {
  return SvgPicture.asset(
    svgIconAsset,
    semanticsLabel: 'Stripe SafePay',
    width: width,
  );
}

// Widget appLogo({required double width}) {
//   return Image(
//     image: const AssetImage("assets/images/logo.png"),
//     width: width,
//   );
// }

Widget appStyleGuideBranding() {
  const googleFontName = 'Roboto';

  return Column(children: [
    // appLogo
    appLogoSVG(width: 55),
    appLogoSVG(width: 89),
    appLogoSVG(width: 144),
    appLogoSVG(width: 233),
    appLogoSVG(width: 377),
    appLogoSVG(width: 233),
    appLogoSVG(width: 144),
    appLogoSVG(width: 89),
    appLogoSVG(width: 55),

    Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            googleFontName,
            style: GoogleFonts.roboto(
              fontSize: 89,
              fontWeight: FontWeight.w100,
            ),
          ),
          addVerticalSpace(5),
          Text(
            googleFontName,
            style: GoogleFonts.roboto(
              fontSize: 55,
              fontWeight: FontWeight.w100,
            ),
          ),
          addVerticalSpace(5),

          // font size 34 row
          Row(
            children: [
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 34,
                  fontWeight: FontWeight.w100,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                ),
              ),
              addHorizontalSpace(5),
            ],
          ),

          addVerticalSpace(5),
          Row(
            children: [
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 21,
                  fontWeight: FontWeight.w100,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                ),
              ),
              addHorizontalSpace(5),
            ],
          ),
          addVerticalSpace(5),
          Row(
            children: [
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w100,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
              addHorizontalSpace(5),
            ],
          ),
          addVerticalSpace(5),
          Row(
            children: [
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              addHorizontalSpace(5),
              Text(
                googleFontName,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          addVerticalSpace(55),
        ],
      ),
    ),
    // appIcon
    Padding(
      padding: const EdgeInsets.all(3.0),
      child: appIconSVG(width: 8),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: appIconSVG(width: 13),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: appIconSVG(width: 21),
    ),
    Padding(
      padding: const EdgeInsets.all(13.0),
      child: appIconSVG(width: 34),
    ),
    Padding(
      padding: const EdgeInsets.all(21.0),
      child: appIconSVG(width: 55),
    ),
    Padding(
      padding: const EdgeInsets.all(34.0),
      child: appIconSVG(width: 89),
    ),
    Padding(
      padding: const EdgeInsets.all(55.0),
      child: appIconSVG(width: 144),
    ),
    Padding(
      padding: const EdgeInsets.all(89.0),
      child: appIconSVG(width: 233),
    ),
    Padding(
      padding: const EdgeInsets.all(55.0),
      child: appIconSVG(width: 377),
    ),
    Padding(
      padding: const EdgeInsets.all(89.0),
      child: appIconSVG(width: 233),
    ),
    Padding(
      padding: const EdgeInsets.all(55.0),
      child: appIconSVG(width: 144),
    ),
    Padding(
      padding: const EdgeInsets.all(34.0),
      child: appIconSVG(width: 89),
    ),
    Padding(
      padding: const EdgeInsets.all(21.0),
      child: appIconSVG(width: 55),
    ),
    Padding(
      padding: const EdgeInsets.all(13.0),
      child: appIconSVG(width: 34),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: appIconSVG(width: 21),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: appIconSVG(width: 13),
    ),
    Padding(
      padding: const EdgeInsets.all(3.0),
      child: appIconSVG(width: 8),
    ),
    // appLogoSVG(width: 610),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('styleguide branding....'),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('styleguide branding....'),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('styleguide branding....'),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('styleguide branding....'),
    ),
    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('styleguide branding....'),
    ),
  ]);
}

Widget appStyleGuideTypography() {
  return const Text('styleguide typography....');
}

Widget appButton({required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {},
    child: Text(title),
  );
}

Widget appButtonWithIcon({required Widget label, required Widget icon}) {
  return ElevatedButton.icon(
    onPressed: () {},
    icon: icon,
    label: label,
  );
}

// app accent button
Widget appButtonAccent({required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      primary: themeColorPrimaryDarkBg,
    ),
    onPressed: () {},
    child: Text(title),
  );
}

// primary app button
Widget appButtonWarn({required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      primary: Colors.amber,
    ),
    onPressed: () {},
    child: Text(title),
  );
}

// primary app button
Widget appButtonDanger({required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      primary: Colors.red,
    ),
    onPressed: () {},
    child: Text(title),
  );
}

// primary app button
Widget appButtonSuccess({required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      primary: Colors.green,
    ),
    onPressed: () {},
    child: Text(title),
  );
}

Widget appStyleGuideButtons() {
  return const Text('styleguide buttons....');
}

Widget appStyleGuideComponents() {
  return Column(
    children: [
      appCardTile(),
      appCardTile(),
      appCardTile(),
      appCardTile(),
    ],
  );
}

Widget appStyleGuideForms() {
  return const Text('styleguide forms....');
}
