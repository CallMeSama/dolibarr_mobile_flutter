import 'dart:math';

import 'package:flutter/material.dart';

class ListeCommande extends StatelessWidget {
  final DataTableSource _data = MyData();
  ListeCommande({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Liste des Commandes"),
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
                  DataColumn(label: Text("date de livraison")),
                  DataColumn(label: Text('Montant HT')),
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
      10,
      (index) => {
            "Réf": index,
            "tiers": index,
            "date de commande"
                "date de livraison"
                "Montant HT": Random().nextInt(1000),
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['Réf'].toString())),
      DataCell(Text(_data[index]["tiers"].toString())),
      DataCell(Text(_data[index]["date de commande"].toString())),
      DataCell(Text(_data[index]["date de livraison"].toString())),
      DataCell(Text(_data[index]["Montant HT"].toString())),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _data.length;

  @override
  int get selectedRowCount => 0;
}
