import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
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
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8.0),

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
                        color: Theme.of(context).primaryColor.withOpacity(0.5),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 8.0),

                // Login Button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 36.0),
                  child: SizedBox(
                    width: 240.0,
                    height: 48.0,
                    child: ElevatedButton(
                      onPressed: () {
                        developer.log("You clicked Login Button");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        elevation: 2.0,
                      ),
                      child: const Text("LOGIN"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
