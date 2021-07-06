// import 'package:flutter/material.dart';
// import 'package:wildfire/Provider/Auth_provider.dart';
// import 'package:wildfire/Screens/Auth_screens/home.dart';
// import 'package:wildfire/Screens/Auth_screens/login.dart';

// class SignUpScreen extends StatefulWidget {
//   @override
//   _SignUpScreenState createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _phoneController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   bool isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     var _padding = EdgeInsets.symmetric(vertical: 1, horizontal: 1);
//     var _margin = EdgeInsets.symmetric(vertical: 5, horizontal: 10);
//     var _color = Colors.grey.shade300;
//     var _alignment = Alignment(-1.0, 0.0);
//     var _padding2 = EdgeInsets.all(8);
//     var _margin2 = EdgeInsets.only(top: 17);
//     var _margin3 = EdgeInsets.fromLTRB(100, 0, 100, 5);
//     var _margin4 = EdgeInsets.fromLTRB(100, 0, 100, 0);

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//             icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
//         title: Text(
//           "Sign Up",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: isLoading == false
//           ? Padding(
//               padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
//               child: ListView(
//                 children: <Widget>[
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1,
//                     // height: MediaQuery.of(context).size.width / 1,
//                     alignment: Alignment(-1.0, 0.0),
//                     padding: EdgeInsets.all(8),
//                     margin: _margin2,
//                     child: Text(
//                       'Full Name',
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(
//                     padding: _padding,
//                     margin: _margin,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.0),
//                       color: _color,
//                     ),
//                     child: TextField(
//                       controller: _nameController,
//                       cursorColor: Colors.black,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                       ),
//                       keyboardType: TextInputType.name,
//                       textAlign: TextAlign.start,
//                     ),
//                   ),
//                   Container(
//                       alignment: _alignment,
//                       padding: _padding2,
//                       margin: _margin2,
//                       child: Text(
//                         'Phone Number',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       )),
//                   Container(
//                     padding: _padding,
//                     margin: _margin,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.0),
//                       color: _color,
//                     ),
//                     child: TextField(
//                       controller: _phoneController,
//                       cursorColor: Colors.black,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                       ),
//                       keyboardType: TextInputType.phone,
//                       textAlign: TextAlign.start,
//                     ),
//                   ),
//                   Container(
//                     alignment: _alignment,
//                     padding: _padding2,
//                     margin: _margin2,
//                     child: Text(
//                       'Email',
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   Container(
//                     padding: _padding,
//                     margin: _margin,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.0),
//                       color: _color,
//                     ),
//                     child: TextField(
//                       controller: _emailController,
//                       cursorColor: Colors.black,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                       ),
//                       keyboardType: TextInputType.emailAddress,
//                       textAlign: TextAlign.start,
//                     ),
//                   ),
//                   Container(
//                       alignment: _alignment,
//                       padding: _padding2,
//                       margin: _margin2,
//                       child: Text(
//                         'Password',
//                         style: TextStyle(
//                             fontSize: 16, fontWeight: FontWeight.bold),
//                       )),
//                   Container(
//                     padding: _padding,
//                     margin: _margin,
//                     height: 45,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.0),
//                       color: _color,
//                     ),
//                     child: TextField(
//                       controller: _passwordController,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                         suffixIcon: Icon(Icons.remove_red_eye_sharp),
//                       ),
//                       keyboardType: TextInputType.visiblePassword,
//                       textAlign: TextAlign.start,
//                       obscureText: true,
//                     ),
//                   ),
//                   // ignore: deprecated_member_use
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.4,
//                     height: 55,
//                     margin: _margin3,
//                     padding: _padding,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.0),
//                       color: Colors.yellow.shade800,
//                     ),
//                     child: MaterialButton(
//                       onPressed: () {
//                         setState(() {
//                           isLoading = true;
//                         });
//                         AuthProvider()
//                             .regitration(
//                           email: _nameController.text.trim(),
//                           password: _passwordController.text.trim(),
//                         )
//                             .then((value) {
//                           setState(() {
//                             isLoading = false;
//                           });
//                           if (value == "Account Created Successfully") {
//                             Navigator.pushAndRemoveUntil(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => HomeScreen(),
//                                 ),
//                                 (route) => false);
//                           } else {
//                             setState(() {
//                               isLoading = false;
//                             });
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(
//                                 content: Text(value),
//                               ),
//                             );
//                           }
//                         });
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Center(
//                           child: Text(
//                             'Sign Up',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width / 1.4,
//                     height: 55,
//                     margin: _margin4,
//                     padding: _padding,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15.0),
//                       color: Colors.white,
//                       border: Border.fromBorderSide(
//                         BorderSide(
//                           color: Colors.yellow.shade800,
//                           width: 3,
//                         ),
//                       ),
//                     ),
//                     child: MaterialButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => HomeScreen(),
//                           ),
//                         );
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Center(
//                           child: Text(
//                             'Continue as Guest',
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.yellow.shade800),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     child: Row(
//                       children: <Widget>[
//                         Text('Already have an account?'),
//                         // ignore: deprecated_member_use
//                         TextButton(
//                           style: ButtonStyle(
//                             overlayColor:
//                                 MaterialStateProperty.resolveWith<Color>(
//                                     (Set<MaterialState> states) {
//                               if (states.contains(MaterialState.focused))
//                                 return Colors.yellow.shade800;
//                               if (states.contains(MaterialState.hovered))
//                                 return Colors.red;
//                               if (states.contains(MaterialState.pressed))
//                                 return Colors.lightGreen;
//                               return Colors.black;
//                             }),
//                           ),
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => LoginScreen(),
//                               ),
//                             );
//                           },
//                           child: Text("Login"),
//                         ),
//                       ],
//                       mainAxisAlignment: MainAxisAlignment.center,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           : Center(
//               child: CircularProgressIndicator(),
//             ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:wildfire/Provider/Auth_provider.dart';
import 'package:wildfire/Screens/Auth_screens/login.dart';
import 'package:wildfire/Screens/Auth_screens/reset.dart';
import 'package:wildfire/Screens/appbar.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
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
    var _margin3 = EdgeInsets.fromLTRB(100, 0, 100, 5);
    var _margin4 = EdgeInsets.fromLTRB(100, 0, 100, 0);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: isLoading == false
          ? Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              child: ListView(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1,
                    alignment: Alignment(-1.0, 0.0),
                    padding: EdgeInsets.all(8),
                    margin: _margin2,
                    child: Text(
                      'Full Name',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: _padding,
                    margin: _margin,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: _color,
                    ),
                    child: TextField(
                      controller: _usernameController,
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
                        'Phone Number',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )),
                  Container(
                    padding: _padding,
                    margin: _margin,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: _color,
                    ),
                    child: TextField(
                      controller: _phoneController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1,
                    alignment: Alignment(-1.0, 0.0),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Email',
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
                      controller: _emailController,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      keyboardType: TextInputType.emailAddress,
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
                            .regitration(
                          email: _emailController.text.trim(),
                          password: _passwordController.text.trim(),
                        )
                            .then((value) {
                          setState(() {
                            isLoading = false;
                          });
                          if (value == "Account Created Successfully") {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                                (route) => false);
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
                            'Sign Up',
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
                          'Have an account already?',
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
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
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
