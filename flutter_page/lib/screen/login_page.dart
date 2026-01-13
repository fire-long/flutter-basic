import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'ID'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'PW'),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            SizedBox(height: 40.0),
            ButtonTheme(
              minWidth: 100.0,
              height: 50.0,
              child: FloatingActionButton(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 35.0,
                ),
                onPressed: () {
                  //id가 flutter, pw가 1234면
                  //login_success_page로 이동

                  //아니면 snackbar로 틀렸다고 안내
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}