import 'package:flutter/material.dart';
import 'package:wildfire3/screens/home.dart';
import 'package:wildfire3/signUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _padding = EdgeInsets.symmetric(vertical: 1, horizontal: 1);
    var _margin = EdgeInsets.symmetric(vertical: 5, horizontal: 10);
    var _color = Colors.grey.shade200;
    var _alignment = Alignment(-1.0, 0.0);
    var _padding2 = EdgeInsets.all(8);
    var _margin2 = EdgeInsets.only(top: 30);

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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 5),
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 1,
              // height: MediaQuery.of(context).size.width / 1,
              alignment: Alignment(-1.0, 0.0),
              padding: EdgeInsets.all(8),
              child: Text(
                'Username',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: _padding,
              margin: _margin,
              color: _color,
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
                  'Password',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: _padding,
              margin: _margin,
              color: _color,
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
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 100),
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  print(_usernameController.text);
                  print(_passwordController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow.shade800,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 100),
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

              // ignore: deprecated_member_use
              child: ElevatedButton(
                child: Text(
                  'Continue as Guest',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.yellow.shade800,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  print(_usernameController.text);
                  print(_passwordController.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ),
            Container(
                child: Row(
              children: <Widget>[
                Text('Don\'t have an account?'),
                // ignore: deprecated_member_use
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  child: Text("Sign Up"),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ))
          ],
        ),
      ),
    );
  }
}
