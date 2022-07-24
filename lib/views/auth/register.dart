import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  final VoidCallback showLogin;
  const Register({Key? key, required this.showLogin}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // text input controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future addUser(String email) async {
    await FirebaseFirestore.instance.collection('users').add({
      'email': email,
    });
  }

  // Firebase Signup
  Future signUp() async {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim());

        addUser(_emailController.text.trim());
      } on FirebaseAuthException catch (e) {
        // print(e);
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Colors.purple,
                title: const Text(
                  'Something went wrong...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white54,
                  ),
                ),
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
    } else {
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
              content: const Text(
                'Passwords do not match',
                style: TextStyle(
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

  // Password Confirmation
  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                  'Welcome to Artasce Creative',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white60,
                  ),
                ),

                const Text(
                  'Take a test drive with a free tour...',
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
                          borderSide: BorderSide(color: Colors.purple.shade400),
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

                const SizedBox(height: 10),

                // confirm password input
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade700),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple.shade400),
                          borderRadius: BorderRadius.circular(12)),
                      hintText: 'Confirm Password',
                      fillColor: Colors.purple.shade700,
                      filled: true,
                    ),
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),

                const SizedBox(height: 10),
                // register button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: signUp,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                          child: Text('Register',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white60,
                              ))),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                // not a member?
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text(
                    'Already registered?  ',
                    style: TextStyle(color: Colors.white38),
                  ),
                  GestureDetector(
                    onTap: widget.showLogin,
                    child: const Text(
                      '  Login now',
                      style: TextStyle(
                          color: Colors.white60, fontWeight: FontWeight.bold),
                    ),
                  )
                ]),
                // const SizedBox(height: 80),
              ]),
            ))));
  }
}
