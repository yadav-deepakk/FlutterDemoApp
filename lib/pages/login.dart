import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_app1/routes/available_routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final FocusNode _uNameTextFieldFocusNode = FocusNode();
  final _loginFormKey = GlobalKey<FormState>();

  String _greetText = "Welcome";
  bool _isLoginSuccess = false;

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

  _usernameValidation(String? uname) {
    if (uname == null || uname.isEmpty) {
      return "Username should not be null";
    }

    if (uname.length < 4 || uname.length > 12) {
      return "Username length must be between 4 and 12";
    }

    return null;
  }

  _userpassValidation(String? pass) {
    if (pass == null || pass.isEmpty) {
      return "Password should not be null";
    }

    if (pass.length < 7 || pass.length > 18) {
      return "Password length must be between 7 and 18";
    }

    String specialSymbols = "!@#%^&*()[]{}\\/|.,";
    String numbers = "1234567890";
    developer.log("SpecialSymbols:$specialSymbols and Numbers:$numbers");
    bool passHasSpecialSymbol = false;
    bool passHasNumber = false;
    for (int i = 0; i < pass.length; i++) {
      var ch = pass[i];
      if (specialSymbols.contains(ch)) {
        passHasSpecialSymbol = true;
      }
      if (numbers.contains(ch)) {
        passHasNumber = true;
      }
    }

    if (!passHasSpecialSymbol) {
      return "Password have atleast 1 symbol from $specialSymbols";
    }

    if (!passHasNumber) {
      return "Password must have a digit from 0 to 9";
    }

    return null;
  }

  void _handleLoginButtonClick(context) async {
    developer.log("Login Button Clicked!");
    developer.log("USER: ${_userNameController.text}");
    developer.log("PASS: ${_passController.text}");

    if (_loginFormKey.currentState!.validate()) {
      setState(() => _isLoginSuccess = !_isLoginSuccess);
      _showFlutterToast("Login Successful!");
      await Future.delayed(const Duration(milliseconds: 500), () async {
        DateTime d = DateTime.now();
        String currentDateTime =
            "${d.day}/${d.month}/${d.year} ${d.hour}:${d.minute}:${d.second}";
        await Navigator.pushNamed(
          context,
          AvailableRoutes.home,
          arguments: {
            "user": _userNameController.text,
            "pass": _passController.text,
            "loginTime": currentDateTime,
          },
        );

        // resetting the state in case of back button was pressed from home to login button again.
        setState(() {
          _greetText = "Welcome";
          _userNameController.text = "";
          _passController.text = "";
          _isLoginSuccess = false;
          FocusScope.of(context).requestFocus(_uNameTextFieldFocusNode);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _loginFormKey,
          child: Column(
            children: <Widget>[
              // img
              Image.asset(
                "lib/assets/images/login.png",
                fit: BoxFit.cover,
              ),

              // greet user
              Text(_greetText,
                  style: Theme.of(context).textTheme.headlineLarge),

              // Form will go here in Center Widget.
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                child: Column(
                  children: [
                    // user id
                    TextFormField(
                      autocorrect: false,
                      obscureText: false,
                      cursorColor: Theme.of(context).primaryColor,
                      controller: _userNameController,
                      validator: (uname) => _usernameValidation(uname),
                      focusNode: _uNameTextFieldFocusNode,
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
                      onChanged: (userName) =>
                          setState(() => _greetText = "Welcome $userName"),
                    ),

                    // password
                    TextFormField(
                      autocorrect: false,
                      obscureText: true,
                      cursorColor: Theme.of(context).primaryColor,
                      controller: _passController,
                      validator: (pass) => _userpassValidation(pass),
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

                    const SizedBox(height: 28.0),

                    // Login Button
                    Material(
                      color: _isLoginSuccess
                          ? Colors.green
                          : Theme.of(context).primaryColor,
                      borderRadius:
                          BorderRadius.circular(_isLoginSuccess ? 25.0 : 12.0),
                      elevation: 2.0,
                      child: InkWell(
                        onTap: () => _handleLoginButtonClick(context),
                        splashColor: Colors.white24,
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 450),
                          curve: Curves.easeInOut,
                          width: _isLoginSuccess ? 50 : 240.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          child: _isLoginSuccess
                              ? const Icon(Icons.done, color: Colors.white)
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    // Login Button Ends.
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
