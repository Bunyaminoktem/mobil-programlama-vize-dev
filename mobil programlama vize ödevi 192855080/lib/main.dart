//Öğrencinin Adı - Soyadı : Bünyamin ÖKTEM
//Öğrenci Numarası : 192855080
//Ödevin Hazırlandığı Ortam : Web üzerinde hazırlandı
//Neden Webde hazırlandı : 4 farklı bilgisayarda denememe rağmen 19.12.2020 tarihine kadar hiç bir bilgisayarda Chrome web emulatör dahil hiçbir emulatör çalışmadı
//ödevin hazırandığı web URL : flutlab.io/ide

import 'package:flutter/material.dart';
import 'uyeOl.dart';
import 'sifremiUnuttum.dart';
import 'anaSayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => loginPage(),
        'uye': (context) => uyeOl(),
        'sifremiUnuttum': (context) => sifremiUnuttum(),
        'anaSayfa': (context) => anaSayfa(),      
      },
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String userName;
  String password;
  final _degerKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Form(
        key: _degerKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Kullanıcı Adı",
                    labelStyle: TextStyle(color: Colors.red),
                    border: OutlineInputBorder(),
                  ),
                  onSaved: (value) {
                    userName = value;
                  }),
              SizedBox(height: 20.0), // SizedBox
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Şifre",
                  labelStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(),
                ),
                onSaved: (value) {
                  password = value;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    child: Text("üye ol"),
                    onPressed: () {
                      Navigator.pushNamed(context, 'uye');
                    },
                  ),
                  MaterialButton(
                      child: Text("şifremi Unuttum"),
                      onPressed: () {
                        Navigator.pushNamed(context, 'anaSayfa');
                      }),
                ],
              ),
              RaisedButton(
                child: Text("Giriş"),
                onPressed: () {
                  _degerKey.currentState.save();
                  debugPrint("userName : $userName,password : $password");

                  if (userName == "demo" && password == "demo") {
                    debugPrint("Giriş Başarılı");
                    Navigator.pushNamed(context, 'anaSayfa');
                  } else {
                    debugPrint("Kullanıcı Adı ya da şifre Hatalı");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
