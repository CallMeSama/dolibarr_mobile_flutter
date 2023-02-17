import 'dart:math';
import 'package:flutter/material.dart';

class ListUsers extends StatefulWidget {
  const ListUsers({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ListUsers> createState() => _ListUsersState();
}

class _ListUsersState extends State<ListUsers> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Liste des utilisateurs"),
          backgroundColor: Color(0xff083d18),
        ),
        body: Center(
          child: Column(
            children: [
              PaginatedDataTable(
                source: _data,
                columns: const [
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('Nom')),
                  DataColumn(label: Text('Prenom')),
                  DataColumn(label: Text("Reponsable Hierarchique")),
                  DataColumn(label: Text('Telephone')),
                  DataColumn(label: Text('Email')),
                ],
                header: const Center(child: Text('Liste des Utilisateurs')),
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
      15,
      (index) => {
            "ID": index,
            "Nom": Random,
            "Prenom": Random(),
            "Reponsable Hierarchique": "Super admin",
            "Telephone": Random().nextInt(10000),
            "Email": "Mbissine19@gmail.com",
          });

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['ID'].toString())),
      DataCell(Text(_data[index]['Nom'].toString())),
      DataCell(Text(_data[index]["Prenom"].toString())),
      DataCell(Text(_data[index]["Reponsable Hierarchique"].toString())),
      DataCell(Text(_data[index]["Telephone"].toString())),
      DataCell(Text(_data[index]["Email"].toString())),
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
