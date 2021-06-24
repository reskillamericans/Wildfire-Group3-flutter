import 'package:flutter/material.dart';
import 'package:wildfire3/screens/home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width / 1,
              // height: MediaQuery.of(context).size.width / 1,
              alignment: Alignment(-1.0, 0.0),
              padding: EdgeInsets.all(8),
              child: Text(
                'Full Name',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: _padding,
              margin: _margin,
              color: _color,
              child: TextField(
                controller: _nameController,
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: _padding,
              margin: _margin,
              color: _color,
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
              alignment: _alignment,
              padding: _padding2,
              margin: _margin2,
              child: Text(
                'Email',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: _padding,
              margin: _margin,
              color: _color,
              child: TextField(
                controller: _emailController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
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
                  'Sign In',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  print(_nameController.text);
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
                  print(_nameController.text);
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
                Text('Already have an account?'),
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
                  onPressed: () {},
                  child: Text("Login"),
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
