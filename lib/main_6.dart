import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  //bu bir değer döndürmez ve widget bekler
  // widget= bütün uygulamada herşey  widgettır
  //flutter de widget cataloga incelemek gerekir.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Snow_Scene_at_Shipka_Pass_1.JPG/1280px-Snow_Scene_at_Shipka_Pass_1.JPG';

  String _img2 = "https://www.yurtgazetesi.com.tr/d/news/218952.jpg";
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
          child: Row(
            children: <Widget>[Icon(Icons.add_circle)],
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

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        //container içerisindekşşekilin rengi
        // color: Colors.red,
        child: FlutterLogo(
          //style: FlutterLogoStyle.stacked,
          size: 64,
          //textColor: Colors.red,
        ),
        //gölge vermek için arka plan için
        //box decorationda verdiğimiz özellikleri containerda da varsa kullanamayız
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
            image:
                DecorationImage(image: NetworkImage(_img1), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.green,
                  offset: Offset.fromDirection(10, 20),
                  blurRadius: 10),
              BoxShadow(
                  color: Colors.black, offset: Offset(0, -20), blurRadius: 20)
            ]),
      ),
    );
  }
}
