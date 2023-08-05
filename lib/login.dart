import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

List<String> options = ["Masukkan nomor handphone", "Masukkan email kamu"];

class _LoginPageState extends State<LoginPage> {
  String currentoption = options[0];

  TextInputType? numberphone = TextInputType.phone;
  final fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage("Picture/sekolah.png"),
                      width: 350,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Hi Sobat SD",
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "Masukkan nomor handphone atau email yang terdaftar \n untuk masuk kedalam aplikasi",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextField(
                      controller: fieldText,
                      keyboardType: numberphone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        labelText: currentoption,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 12),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 15),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        labelText: "Masukkan Sandi",
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 12),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Masuk Via :",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            title: Text(
                              "No. Handphone",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            leading: Radio(
                              value: options[0],
                              groupValue: currentoption,
                              onChanged: (value) {
                                setState(() {
                                  currentoption = value.toString();
                                  numberphone = TextInputType.phone;
                                  fieldText.clear();
                                  FocusScope.of(context).unfocus();
                                });
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            leading: Radio(
                              value: options[1],
                              groupValue: currentoption,
                              onChanged: (value) {
                                setState(() {
                                  currentoption = value.toString();
                                  numberphone = TextInputType.emailAddress;
                                  fieldText.clear();
                                  FocusScope.of(context).unfocus();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        // Tindakan yang ingin Anda lakukan ketika tombol ditekan
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}