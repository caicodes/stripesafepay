import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  final VoidCallback showLogin;
  const Login({Key? key, required this.showLogin}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Firebase Login
  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      // show dialog //
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: Colors.purple,
              title: const Text('Something went wrong...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white54,
                  )),
              content: Text(
                e.message.toString(),
                style: const TextStyle(
                  color: Colors.white54,
                ),
              ),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/app-bg.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  'assets/images/login-logo.png',
                  width: 150,
                ),
              ),
              const Text(
                'Hello Again',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white60,
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                'Welcome Back, you\'ve been missed!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white24,
                ),
              ),
              const SizedBox(height: 16),

              // password input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade700),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade700),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Email',
                    fillColor: Colors.purple.shade700,
                    filled: true,
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),

              // password input
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple.shade700),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade400),
                        borderRadius: BorderRadius.circular(12)),
                    hintText: 'Password',
                    fillColor: Colors.purple.shade700,
                    filled: true,
                  ),
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              // Spacer
              const SizedBox(height: 10),

              // // forgot password
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 32.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       GestureDetector(
              //         onTap: () {
              //           // Navigator.push(
              //           //   context,
              //           //   MaterialPageRoute(
              //           //     builder: (context) {
              //           //       return ForgotPasswordPage(
              //           //         forgotPasswordPage: () {},
              //           //       );
              //           //     },
              //           //   ),
              //           // );
              //         },
              //         child: const Text('Forgot Password?',
              //             style: TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Colors.white54,
              //             )),
              //       )
              //     ],
              //   ),
              // ),

              // Spacer
              const SizedBox(height: 10),

              // sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: GestureDetector(
                  onTap: signIn,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Spacer
              const SizedBox(height: 24),

              // not a member?
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  'Not a member?  ',
                  style: TextStyle(color: Colors.white38),
                ),
                GestureDetector(
                  onTap: widget.showLogin,
                  child: const Text(
                    '  Register now',
                    style: TextStyle(
                        color: Colors.white60, fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
