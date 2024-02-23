import 'package:burc_uygulamasi/burc_detay.dart';
import 'package:burc_uygulamasi/model/Burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BurcDetay(secilenBurc: listelenenBurc),),);
            },
            leading: CircleAvatar(child: Image.asset("images/" + listelenenBurc.burcKucukResim),),
            title: Text(listelenenBurc.burcAdi, style: myTextStyle.headline5,),
            subtitle: Text(listelenenBurc.burcTarihi, style: myTextStyle.subtitle1,),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}