// main menu drawer
import 'package:flutter/material.dart';

class DrawerUser extends StatelessWidget {
  const DrawerUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      // backgroundColor: colorPrimary,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            // decoration: const BoxDecoration(
            //   color: colorBackground,
            //   // image: DecorationImage(
            //   //   image: AssetImage('assets/images/trips/detail-ex.jpg'),
            //   //   fit: BoxFit.cover,
            //   // ),
            // ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // appLogo(width: 200),
                  // addVerticalSpace(4),
                  Text(
                    'Stripe SafePay User Menu',
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_add_alt_outlined),
            title: const Text('New User?'),
            subtitle: const Text('Register For a Free Account.'),
            onTap: () {
              // goto register screen
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const Register()),
              //   );
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Frequently Asked Questions'),
            subtitle: const Text('Find answers here!'),
            onTap: () {
              //   // goto faqs screen
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const Faqs()),
              //   );
            },
          ),
          ListTile(
            leading: const Icon(Icons.email_outlined),
            title: const Text('Contact Us'),
            subtitle: const Text('Send us a message!'),
            onTap: () {
              // goto contact screen
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const Contact()),
              //   );
              //   // Then close the drawer
              //   // Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
