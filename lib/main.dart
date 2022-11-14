import 'package:flutter/material.dart';
import 'package:staj_proje1/SayfaB.dart';

import 'SayfaA.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Anaekran(),
    );
  }
}

class Anaekran extends StatefulWidget {
  @override
  State<Anaekran> createState() => _AnaekranState();
}

class _AnaekranState extends State<Anaekran> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80a494),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 150, width: 150, child: Image.asset("foto/loginn.png")),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 60,
                width: 260,
                child: ElevatedButton.icon(
                  icon: Icon(
                    Icons.login,
                    color: Color(0xff321414),
                    size: 35.0,
                  ),
                  label: Center(
                    child: Text(
                      "Giriş Ekranı",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SayfaB()),
                    );
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xff668b87)),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: 260,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.account_circle,
                  color: Color(0xff321414),
                  size: 35.0,
                ),
                label: Center(
                  child: Text(
                    "Kayıt",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SayfaA()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Color(0xff668b87)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
