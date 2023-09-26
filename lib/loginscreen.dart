import 'package:flutter/material.dart';
import 'package:myapp/homescreen.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email = '';
  late String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Text(
                      "Brainobrain",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Dictation",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: TextFormField(
                      onSaved: (value) => _email = value!,
                      validator: (email) {
                        if (email!.isEmpty) {
                          return "Please Enter Email";
                        }
                         bool emailValid = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
                        if (!emailValid) {
                          return "Please enter a valid email address";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.orange,
                        ),
                        labelText: "Email Address",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: TextFormField(
                      onSaved: (value) => _password = value!,
                      validator: (password) {
                        if (password!.isEmpty) {
                          return "Please Enter Password";
                        } else if (password.length < 8 ||
                            password.length > 14) {
                          return "Password is Wrong!!!";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: Colors.orange,
                        ),
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 54.0,
                        width: 350.0,
                        child: OutlinedButton(
                          onPressed: () {
                            _login();
                          },
                          child: Text(
                            "Login to account",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
    }
    if (_email == "saro@gmail.com" && _password == "Test@123") {
      FocusScope.of(context).unfocus();
    } else {
      print("Invalid Details");
    }
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
  }
}



