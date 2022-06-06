import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: mainPageWidget(),
    ),
  );
}

class mainPageWidget extends StatefulWidget {
  mainPageWidget({Key? key}) : super(key: key);

  @override
  State<mainPageWidget> createState() => _mainPageWidgetState();
}

class _mainPageWidgetState extends State<mainPageWidget> {
  Color color1 = Colors.orange;
  Color textColor = Colors.white;
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  getEmail() {
    return "email@gmail.com";
  }

  getPass() {
    return "**********";
  }

  @override
  void initState() {
    super.initState();
    mailController.text = getEmail();
    passController.text = getPass();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Life Drop",
                    style: TextStyle(
                      fontSize: 50,
                      color: textColor,
                    ),
                  ),
                  Text(
                    "your blood can save lives",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                    ),
                  ),
                  TextField(
                    controller: mailController,
                    style: TextStyle(color: textColor, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                    ),
                  ),
                  TextField(
                    controller: passController,
                    style: TextStyle(color: textColor, fontSize: 14),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      onPressed: () {
                        print(mailController.text);
                        print(passController.text);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
