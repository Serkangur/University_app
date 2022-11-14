import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staj_proje1/SayfaB.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  /*epostalar() {
    FirebaseFirestore.instance
        .collection("epostalar")
        .doc(t1.text)
        .set({'e-posta1': t1.text, 'sifre  ': t2.text});
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80a494),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("foto/kayıt.png")),
              SizedBox(
                height: 50,
                width: 200,
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'İsim',
                        hintStyle: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Soyad',
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: Card(
                  child: TextField(
                    //controller: t1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'E-posta',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: Card(
                  child: TextField(
                    controller: t2,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Şifre',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "İsteğe Bağlı Olarak Aşağıdaki Bilgileri Doldurun",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Yurt Ücretiniz',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Yol Ücretiniz',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: Card(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Aylık Gider',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xff668b87)),
                  onPressed: () {
                    //epostalar();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SayfaB()),
                    );
                  },
                  child: const Text(
                    'Kayıt Ol',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
