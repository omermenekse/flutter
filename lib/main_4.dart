import 'package:flutter/material.dart';

void main() {
  //bu bir değer döndürmez ve widget bekler
  // widget= bütün uygulamada herşey  widgettır
  //flutter de widget cataloga incelemek gerekir.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ana sayfadaki yazıların düzgün bir biçimde kullanılması için scaffold widget kullanmamız gerekir.
      theme: ThemeData(primaryColor: Colors.teal),
      home: Scaffold(
        //backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text('başlık'),

          backgroundColor: Colors.amber,
          // eğer bir widgetin içerisine birşey koyacaksak child olarak bir yapısı vardır.
        ),
        //bodyde metin yazbilmek için
        body: Center(
          child: Container(
            child: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 64,
              textColor: Colors.red,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //ekrana yazdırmak için debug print komutu kullanılır
            //console yazdırıyor
            // Colors.yellow;
            //burası isimlendirilmemiş bir fonksiyondur
            debugPrint('Tıklandı');
          },
          //child widget içerisine konulackak elemanı temsil ediyor.
          //birden fazla eleman için children kullanılacak
          child: Icon(Icons.account_circle_rounded, color: Colors.blue),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
