import 'package:flutter/material.dart';
import 'package:wildfire/Provider/auth_provider.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  TextEditingController _usernameController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var _padding = EdgeInsets.symmetric(vertical: 1, horizontal: 1);
    var _margin = EdgeInsets.symmetric(vertical: 5, horizontal: 10);
    var _color = Colors.grey.shade300;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black), onPressed: () {}),
        title: Text(
          "Reset",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/LoginScreen');
            },
            icon: Icon(Icons.login_sharp),
            color: Colors.black,
          )
        ],
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
                  TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
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
                      setState(() {
                        isLoading = true;
                      });
                      AuthProvider()
                          .resetPassword(
                        email: _usernameController.text.trim(),
                      )
                          .then((value) {
                        setState(() {
                          isLoading = false;
                        });
                        if (value == 'Email Sent to Email You Provided') {
                          Navigator.pushNamed(context, '/LoginScreen');
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
                    child: Text(
                      "Reset",
                      style: TextStyle(
                          color: Colors.yellow.shade800,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
