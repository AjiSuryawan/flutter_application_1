import 'package:flutter/material.dart';
import 'package:flutter_application_1/ListPhoneNumber.dart';
import 'package:flutter_application_1/Register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Welcome, user",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrUsername,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: ctrPassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    if (ctrUsername.text == "admin" &&
                        ctrPassword.text == "admin") {
                      //pindah tampilan
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => ListPhoneNumber()),
                          (Route<dynamic> route) => false);
                    } else {
                      ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text("Gagal login")));
                    }
                  },
                  child: Text("Login")),
            ),
            Container(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );
                },
                child: Text(
                  "Register here",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}
