import 'package:flutter/material.dart';

class LoginData {
  String username = "";
  String password = "";
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginData loginData = LoginData();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter username";
                }
                return null;
              },
              onSaved: (newValue) {
                loginData.username = newValue!;
              },
              decoration: const InputDecoration(
                  hintText: "none@none.com",
                  labelText: 'Username (email address)'),
            ),
            TextFormField(
              obscureText: true,
              validator: (value) {
                if (value!.length < 10) {
                  return "Password must at least be 10 character";
                }
                return null;
              },
              onSaved: (newValue) {
                loginData.password = newValue!;
              },
              decoration: const InputDecoration(
                hintText: "Password",
                labelText: "Password",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter username";
                }
                return null;
              },
              onSaved: (newValue) {
                loginData.username = newValue!;
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              )),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print("Username : ${loginData.username}");
                    print("Password : ${loginData.password}");
                  }
                },
                child: const Text('Log in'))
          ],
        ),
      ),
    );
  }
}
