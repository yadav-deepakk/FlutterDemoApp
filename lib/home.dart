import "package:flutter/material.dart"; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // variables with var keyword
  var name = "Deepak Kumar"; 
  var lname = "Yadav";
  var age = 24.9;
  var additionalInfo = {
    "github-user": "yadav-deepakk",
    "languages speak": "Hind;, English",
    "Programing Languages": "C, Java, JavaScript, Dart, SQL", 
  }; 


  // Types: num(int, double), Boolean(bool), String, List, Set, Map, Record, Runes, Null(null). 
  num num1 = 98;
  num num2 = 45.99; 
  int number1 = 11;
  double number2 = 12.213; 

  bool isActiveStatus = false;
  String pet = "Dog"; 

  List<String> names = <String>["Raj", "Deepak", "Kishor", "Ravi"]; 
  List numbers = <num>[2,3.3,6,1,9,2]; 
  List listings1 = ["Rj Sharma", 23, true]; 

  var set1 = {"Raja", "Rajat", "Raj", "Rajan", "Rajak"}; // doesn't allow duplicates

  TextStyle _titleText (){
    return const TextStyle(
      fontSize: 18.0, 
      color: Colors.black,
    );
  }

  TextStyle _subTitleText(double fontSize){
    return TextStyle(
      fontSize: fontSize, 
      color: Colors.black87,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Heading
        Center(
          child: Padding(
            padding: const EdgeInsets.all(2.0), 
            child: Text("Day1 - Variables and Types:",
              style: _titleText(), 
            )
          )
        ),

        // Texts
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0), 
          child: Text("Commonly used Types are num(int, double), boolean (bool), String, List, Set and Map",
            style: _subTitleText(15.0), 
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0), 
          child: Text("Numbers are : $age, $number1, $number2, $num1, $num2",
            style: _subTitleText(15.0), 
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0), 
          child: Text("Boolean value is : $isActiveStatus", style: _subTitleText(15.0) ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0), 
          child: Text("String value is: $pet", style: _subTitleText(15.0)),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0), 
          child: Text("Map value is: $additionalInfo", style: _subTitleText(15.0)),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0), 
          child: Text("List value is: $numbers", style: _subTitleText(15.0)),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0), 
          child: Text("set value is: $set1", style: _subTitleText(15.0)),
        ),

      ],
    );
  }
}