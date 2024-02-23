import 'package:burc_uygulamasi/burc_item.dart';
import 'package:burc_uygulamasi/data/Strings.dart';
import 'package:burc_uygulamasi/model/Burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;       // late işlem yapmadım ama yapacağım kızma demek için
  BurcListesi(){
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("burçlar listesi"),),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index) {
          return BurcItem(listelenenBurc: tumBurclar[index]);
        }, itemCount: tumBurclar.length,),
      ),
    );
  }
  
  List<Burc> veriKaynaginiHazirla() {
    
    List<Burc> gecici = [];
    for(int i = 0; i < 12; i++){

    var burcAdi = Strings.BURC_ADLARI[i];
    var burcTarihi = Strings.BURC_TARIHLERI[i];
    var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
    // burçların resimlerini elde etmek için kodu resimlerin isimlerine uygun hale getireceğiz. resim isimleri bilere adlandıırlmış.
    // burç ismi Koc resim ismi koc1, bu yüzden harfleri küçültüp yanına 1 ekleyerek elde ediliyor.
    var burcKucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i+1}.png";
    var burcBuyukResim = Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i+1}.png";

      Burc eklenecekBurc = Burc(burcAdi, burcTarihi, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}