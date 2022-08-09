import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("Please fill this form"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone',
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
              ),
              Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      // proses registrasi
                    },
                    child: Text("Submit")),
              ),
              Container(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    // kembali ke login
                    Navigator.pop(context);
                  },
                  child: Text("Already have account ? Login"))
              // text "already have account? login"
            ],
          ),
        ),
      ),
    );
  }
}
