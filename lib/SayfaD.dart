import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SayfaD extends StatefulWidget {
  const SayfaD({Key? key}) : super(key: key);

  @override
  State<SayfaD> createState() => _SayfaDState();
}

class _SayfaDState extends State<SayfaD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80a494),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 150, width: 150, child: Image.asset("foto/chose.png")),
            SizedBox(
              height: 35,
            ),
            Text(
              "Yol : ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "Yurt : ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text("Alışveriş : ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
