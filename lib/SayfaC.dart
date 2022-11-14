import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staj_proje1/SayfaD.dart';

class SayfaC extends StatefulWidget {
  const SayfaC({Key? key}) : super(key: key);

  @override
  State<SayfaC> createState() => _SayfaCState();
}

class _SayfaCState extends State<SayfaC> {
  var sehirlerListe = <String>[];
  String secilenSehir = "ADANA";
  @override
  void initState() {
    super.initState();
    sehirlerListe.add("ADANA");
    sehirlerListe.add("ADIYAMAN");
    sehirlerListe.add("AFYONKARAHİSAR");
    sehirlerListe.add("AĞRI");
    sehirlerListe.add("AMASYA");
    sehirlerListe.add("ANKARA");
    sehirlerListe.add("ANTALYA");
    sehirlerListe.add("ARTVİN");
    sehirlerListe.add("AYDIN");
    sehirlerListe.add("BALIKESİR");
    sehirlerListe.add("BİLECİK");
    sehirlerListe.add("BİNGÖL");
    sehirlerListe.add("BİTLİS");
    sehirlerListe.add("BOLU");
    sehirlerListe.add("BURDUR");
    sehirlerListe.add("BURSA");
    sehirlerListe.add("ÇANAKKALE");
    sehirlerListe.add("ÇANKIRI");
    sehirlerListe.add("ÇORUM");
    sehirlerListe.add("DENİZLİ");
    sehirlerListe.add("DİYARBAKIR");
    sehirlerListe.add("EDİRNE");
    sehirlerListe.add("ELAZIĞ");
    sehirlerListe.add("ERZİNCAN");
    sehirlerListe.add("ERZURUM");
    sehirlerListe.add("ESKİŞEHİR");
    sehirlerListe.add("GAZİANTEP");
    sehirlerListe.add("GİRESUN");
    sehirlerListe.add("GÜMÜŞHANE");
    sehirlerListe.add("HAKKARİ");
    sehirlerListe.add("HATAY");
    sehirlerListe.add("ISPARTA");
    sehirlerListe.add("MERSİN");
    sehirlerListe.add("İSTANBUL");
    sehirlerListe.add("İZMİR");
    sehirlerListe.add("KARS");
    sehirlerListe.add("KASTAMONU");
    sehirlerListe.add("KAYSERİ");
    sehirlerListe.add("KIRKLARELİ");
    sehirlerListe.add("KIRŞEHİR");
    sehirlerListe.add("KOCAELİ");
    sehirlerListe.add("KONYA");
    sehirlerListe.add("KÜTAHYA");
    sehirlerListe.add("MALATYA");
    sehirlerListe.add("MANİSA");
    sehirlerListe.add("KAHRAMANMARAŞ");
    sehirlerListe.add("MARDİN");
    sehirlerListe.add("MUĞLA");
    sehirlerListe.add("MUŞ");
    sehirlerListe.add("NEVŞEHİR");
    sehirlerListe.add("NİĞDE");
    sehirlerListe.add("ORDU");
    sehirlerListe.add("RİZE");
    sehirlerListe.add("SAKARYA");
    sehirlerListe.add("SAMSUN");
    sehirlerListe.add("SİİRT");
    sehirlerListe.add("SİNOP");
    sehirlerListe.add("SİVAS");
    sehirlerListe.add("TEKİRDAĞ");
    sehirlerListe.add("TOKAT");
    sehirlerListe.add("TRABZON");
    sehirlerListe.add("TUNCELİ");
    sehirlerListe.add("ŞANLIURFA");
    sehirlerListe.add("UŞAK");
    sehirlerListe.add("VAN");
    sehirlerListe.add("YOZGAT");
    sehirlerListe.add("ZONGULDAK");
    sehirlerListe.add("AKSARAY");
    sehirlerListe.add("BAYBURT");
    sehirlerListe.add("KARAMAN");
    sehirlerListe.add("KIRIKKALE");
    sehirlerListe.add("BATMAN");
    sehirlerListe.add("ŞIRNAK");
    sehirlerListe.add("BARTIN");
    sehirlerListe.add("ARDAHAN");
    sehirlerListe.add("IĞDIR");
    sehirlerListe.add("YALOVA");
    sehirlerListe.add("KARABÜK");
    sehirlerListe.add("KİLİS");
    sehirlerListe.add("OSMANİYE");
    sehirlerListe.add("DÜZCE");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff80a494),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                height: 150, width: 150, child: Image.asset("foto/city.png")),
            DropdownButton<String>(
              value: secilenSehir,
              items:
                  sehirlerListe.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    "Şehir : $value",
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down),
              onChanged: (String? secilenVeri) {
                setState(() {
                  secilenSehir = secilenVeri!;
                });
              },
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Görmek İstediğiniz Şehri Seçiniz",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            Text(
              "Ve Butona Basınız",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xff668b87)),
              child: Text(
                "Göster",
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SayfaD()),
                );
                print("En son seçilen şehir : $secilenSehir");
              },
            )
          ],
        ),
      ),
    );
  }
}
