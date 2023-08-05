import 'package:belajar_flutter_pak_aji/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// Impor file login.dart tempat Anda mendefinisikan halaman login

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("Picture/gambar_atas_shodia.png")),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("Picture/rumah_di_home_shodia.png")),
                  Text("Selamat Datang, di",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                      textAlign: TextAlign.center),
                  Text(
                    "Sho Dia",
                    style: TextStyle(fontSize: 32),
                  ),
                  Text("Tempat belajar coding", style: TextStyle(fontSize: 14)),
                  Text("No 1 di Indonesia", style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: SizedBox(
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ));
                },
                child: Text(
                  "Mulai",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    }
}
