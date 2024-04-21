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
        body: Container(
          // alignment: Alignment(1, 1),
          //aligment kullandığımızda içerisindeki veri kadar yer kaplıyor
          // width: 200,
          //height: 300,
          color: Colors.teal,
          width: 100,
          height: 200,
          child: Text('ömer' * 10, textAlign: TextAlign.center),

          //margin: EdgeInsets.all(50),
          //margin: EdgeInsets.only(left: 10, top: 30),
          //margin: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
          margin: EdgeInsets.all(30),

          // text ile container arasındanki mesafe için padding kullanıyoruz

          //minimum %100 lük bir alan kaplamasını istiyorsak alttaki yapıyı kullanacağız. belirlediğimiz alan kadar yer tutar
//          constraints: BoxConstraints(
          //            minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
        ), // bir container çocuğu kadar yer kaplar

        /*Text('Merhaba Dünya',
            style: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.bold)),
                */
        //buton oluşturmak için
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
          child: Icon(Icons.account_circle_rounded, color: Colors.red),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }
}
