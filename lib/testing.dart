import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPageState();
}

List<String> options = ["Masukkan nomor handphone", "Masukkan email kamu"];

class _LoginPageState extends State<LoginPage1> {
  bool isDaftarSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 50), // Add some spacing for other widgets

                // Assuming you want to display the options based on the value of isDaftarSelected
                Container(
                  child: Text(
                    isDaftarSelected ? options[1] : options[0],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),

                // ... (other code remains the same)

                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isDaftarSelected = false;
                            });
                          },
                          child: Container(
                            color: isDaftarSelected ? Colors.red : Colors.yellow,
                            child: Center(
                              child: Text(
                                "Masuk",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isDaftarSelected = true;
                            });
                          },
                          child: Container(
                            color: isDaftarSelected ? Colors.yellow : Colors.red,
                            child: Center(
                              child: Text(
                                "Daftar",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
