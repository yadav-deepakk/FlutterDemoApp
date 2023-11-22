import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_app1/routes/available_routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // img
            Image.asset(
              "lib/assets/images/login.png",
              fit: BoxFit.cover,
            ),

            // greet user
            Text("Welcome", style: Theme.of(context).textTheme.headlineLarge),

            // Form will go here in Center Widget.
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: Column(
                children: [
                  // user id
                  TextFormField(
                    autocorrect: false,
                    controller: _userNameController,
                    obscureText: false,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      label: Text(
                        "Username",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      hintText: "Enter your User name",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),

                  // password
                  TextFormField(
                    autocorrect: false,
                    controller: _passController,
                    obscureText: true,
                    cursorColor: Theme.of(context).primaryColor,
                    decoration: InputDecoration(
                      label: Text(
                        "Password",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      hintText: "Enter your password",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 2.0,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  // Login Button
                  SizedBox(
                    width: 240.0,
                    height: 48.0,
                    child: ElevatedButton(
                      onPressed: () {
                        developer.log("Login Button Clicked!");

                        developer.log("USER: ${_userNameController.text}");
                        developer.log("PASS: ${_passController.text}");
                        if (!(_userNameController.text == "Deepak") &&
                            !(_passController.text == "Admin#123")) {
                          _showFlutterToast("Enter Valid Credentials.");
                          return;
                        }

                        _showFlutterToast("Login Successful!");
                        Navigator.pop(context);
                        DateTime d = DateTime.now();
                        String currentDateTime =
                            "${d.day}/${d.month}/${d.year} ${d.hour}:${d.minute}:${d.second}";
                        Navigator.pushNamed(
                          context,
                          AvailableRoutes.home,
                          arguments: {
                            "user": _userNameController.text,
                            "pass": _passController.text,
                            "loginTime": currentDateTime,
                          },
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 2.0,
                      ),
                      child: const Text("LOGIN"),
                    ),
                  ),
                  // Login Button Ends.
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showFlutterToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
