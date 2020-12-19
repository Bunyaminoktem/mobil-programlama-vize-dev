//Öğrencinin Adı - Soyadı : Bünyamin ÖKTEM
//Öğrenci Numarası : 192855080
//Ödevin Hazırlandığı Ortam : Web üzerinde hazırlandı
//Neden Webde hazırlandı : 4 farklı bilgisayarda denememe rağmen 19.12.2020 tarihine kadar hiç bir bilgisayarda Chrome web emulatör dahil hiçbir emulatör çalışmadı
//ödevin hazırandığı web URL : flutlab.io/ide

import 'package:flutter/material.dart';

class uyeOl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "e-mail",
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adınız",
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Şifreniz",
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Şifreniz Tekrar",
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text("Vazgeç"),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                child: Text("Kaydol"),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
