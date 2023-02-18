import 'dart:math';
import 'package:flutter/material.dart';

class ListCom extends StatefulWidget {
  const ListCom({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ListCom> createState() => _ListComState();
}

class _ListComState extends State<ListCom> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Liste des commandes'),
          backgroundColor: Color(0xff250432),
        ),
        body: Center(
          child: Column(
            children: [
              PaginatedDataTable(
                source: _data,
                columns: const [
                  DataColumn(label: Text('Réf')),
                  DataColumn(label: Text('tiers')),
                  DataColumn(label: Text('date de commande')),
                  DataColumn(label: Text("date prevue de livraison")),
                  DataColumn(label: Text('montant HT')),
                  DataColumn(label: Text('Auteur')),
                  DataColumn(label: Text('Facturé')),
                ],
                header: const Center(child: Text('Liste des commandes')),
                columnSpacing: 30,
                horizontalMargin: 60,
                rowsPerPage: 8,
              )
            ],
          ),
        ));
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      5,
      (index) => {
            "Réf": index,
            "tiers": index,
            "date de commande": Random().nextInt(31),
            "date prevue de livraison": Random().nextInt(31),
            "montant HT": Random().nextInt(10000),
            "Auteur": "SuperAdmin",
            "Facturé": Random().nextBool(),
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['ref'].toString())),
      DataCell(Text(_data[index]['tiers'].toString())),
      DataCell(Text(_data[index]["date de commande"].toString())),
      DataCell(Text(_data[index]["date prevue de livraison"].toString())),
      DataCell(Text(_data[index]["montant HT"].toString())),
      DataCell(Text(_data[index]["Auteur"].toString())),
      DataCell(Text(_data[index]['Facturé'].toString())),
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => _data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
