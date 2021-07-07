import 'package:flutter/material.dart';
import 'package:wildfire/Provider/Auth_provider.dart';
import 'package:wildfire/Screens/Auth_screens/Register.dart';
import 'package:wildfire/Screens/Auth_screens/reset.dart';
import 'package:wildfire/Screens/appbar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var _padding = EdgeInsets.symmetric(vertical: 1, horizontal: 1);
    var _margin = EdgeInsets.symmetric(vertical: 5, horizontal: 10);
    var _color = Colors.grey.shade300;
    var _alignment = Alignment(-1.0, 0.0);
    var _padding2 = EdgeInsets.all(8);
    var _margin2 = EdgeInsets.only(top: 17);
    var _margin3 = EdgeInsets.fromLTRB(100, 50, 100, 5);
    var _margin4 = EdgeInsets.fromLTRB(100, 0, 100, 0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
        title: Text(
          "Login",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: isLoading == false
          ? Padding(
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: 5),
              child: ListView(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1,
                    // height: MediaQuery.of(context).size.width / 1,
                    alignment: Alignment(-1.0, 0.0),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Username/Email',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: _padding,
                    margin: _margin,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: _color,
                    ),
                    child: TextField(
                      controller: _userNameController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      keyboardType: TextInputType.name,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                      alignment: _alignment,
                      padding: _padding2,
                      margin: _margin2,
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: _padding,
                    margin: _margin,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: _color,
                    ),
                    child: TextField(
                      controller: _passwordController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(Icons.remove_red_eye_sharp),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textAlign: TextAlign.start,
                      obscureText: true,
                    ),
                  ),

                  // ignore: deprecated_member_use
                  Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 55,
                    margin: _margin3,
                    padding: _padding,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.yellow.shade800,
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          isLoading = true;
                        });
                        AuthProvider()
                            .signIn(
                          email: _userNameController.text.trim(),
                          password: _passwordController.text.trim(),
                        )
                            .then((value) {
                          setState(() {
                            isLoading = false;
                          });
                          if (value == 'Welcome To Wildfire Home') {
                            Navigator.pushNamed(context, '/Dashboard');
                          } else {
                            setState(() {
                              isLoading = false;
                            });
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(value),
                              ),
                            );
                          }
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 55,
                    margin: _margin4,
                    padding: _padding,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      border: Border.fromBorderSide(BorderSide(
                        color: Colors.yellow.shade800,
                        width: 3,
                      )),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FirstPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Continue as Guest',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow.shade800),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        // ignore: deprecated_member_use
                        TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.yellow.shade800;
                              if (states.contains(MaterialState.hovered))
                                return Colors.red;
                              if (states.contains(MaterialState.pressed))
                                return Colors.lightGreen;
                              return Colors.black;
                            }),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.yellow.shade800,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Forgot your Password?',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        // ignore: deprecated_member_use
                        TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.focused))
                                return Colors.yellow.shade800;
                              if (states.contains(MaterialState.hovered))
                                return Colors.red;
                              if (states.contains(MaterialState.pressed))
                                return Colors.lightGreen;
                              return Colors.black;
                            }),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Reset",
                            style: TextStyle(
                                color: Colors.yellow.shade800,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  )
                ],
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
