import 'package:dersler/sehir.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {
  List<Sehir> _sehirler = [
    Sehir("İstanbul", 34, 1590000),
    Sehir("Ankara", 6, 5700000),
    Sehir("İzmir", 35, 4400000),
    Sehir("Bursa", 16, 3100000),
    Sehir("Antalya", 7, 2600000),
    Sehir("Konya", 42, 2290000),
    Sehir("Adana", 1, 2270000),
    Sehir("Şanlıurfa", 63, 2170000),
    Sehir("Gaziantep", 27, 2150000),
    Sehir("Kocaeli", 41, 2000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: _listeOgesiginiOlustur,
        itemCount: _sehirler.length,
      ),
    );
  }

  Widget _listeOgesiginiOlustur(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_sehirler[index].isim),
        subtitle: Text(_sehirler[index].nufus.toString()),
        trailing: Text(_sehirler[index].plakaKodu.toString()),
        leading: Icon(Icons.location_city),
      ),
    );
  }
}
