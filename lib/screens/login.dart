import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  String? data;
  Login({Key? key, this.data}) : super(key: key);
  final userNameCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
            child: Column(
          children: [
            FlutterLogo(
              size: 100,
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: userNameCtrl,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  hintText: "Username"),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              controller: passwordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Password"),
            ),
            SizedBox(
              height: 12,
            ),
            Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {}, child: Text("Forgot Password?"))),
            SizedBox(
              height: 8,
            ),
            SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      print(userNameCtrl.text);
                      print(passwordCtrl.text);
                    },
                    child: Text('Login')))
          ],
        )),
      ),
    );
  }
}
