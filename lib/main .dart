import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  //bu bir değer döndürmez ve widget bekler
  // widget= bütün uygulamada herşey  widgettır
  //flutter de widget cataloga incelemek gerekir.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade200),
        containerOlustur('A', Colors.orange.shade400),
        containerOlustur('R', Colors.orange.shade600),
        containerOlustur('T', Colors.orange.shade800),
      ],
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: containerOlustur('E', Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade500, margin: 15),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade600, margin: 15),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade700, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade800, margin: 15),
        ),
        Expanded(
          child: containerOlustur('I', Colors.orange.shade900, margin: 15),
        ),
      ],
    );
  }

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
          backgroundColor: Colors.amber,
          title: Text('başlık'),
          // eğer bir widgetin içerisine birşey koyacaksak child olarak bir yapısı vardır.
        ),
        //bodyde metin yazbilmek için
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumnOlustur()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.blue,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
  /*
  ctrl+shift+ p 
  dev tools in browser ile browser üzerinde hata giderimi yapabiliyoruz
  */

  List<Widget> get sorunluContainer {
    //burada expand ıt ile sarmalama yaparsak herhangi bir sorun yaşamayız
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.purple,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.green,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.brown,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.black,
      ),
    ];
  }

  List<Widget> get filexibleContainer {
    //burada expand ıt ile sarmalama yaparsak herhangi bir sorun yaşamayız
    return [
      //container genişliğine göre container filexible olduğunda kendisi ayarlıyor
      //içerik kadar yer tut lazımsa küçül
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.purple,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    //burada expand ıt ile sarmalama yaparsak herhangi bir sorun yaşamayız
    //expanded container ile containerlar kendi genişliklerini otomatik olarak ayarlamaktadırlar.,
    //expanded şu demektir. atrık yükseklik ve geniş değerlerinin önemi yok elemanları bol alana uygun bir şekilde yerleştir.
    return [
      Expanded(
        //toplam kullanılan alanı flex değerine böleerek herbir flex için bir değer ataması yaptıktan sonra o katsayı ile çarparak değeri verir.
        flex: 1,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.purple,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.green,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.brown,
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          color: Colors.black,
        ),
      ),
    ];
  }
}
