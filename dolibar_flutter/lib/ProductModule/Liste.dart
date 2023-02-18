import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoliMobile',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DoliMobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Liste(widget: widget, data: _data);
  }
}

class Liste extends StatelessWidget {
  const Liste({
    super.key,
    required this.widget,
    required DataTableSource data,
  }) : _data = data;

  final MyHomePage widget;
  final DataTableSource _data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          backgroundColor: Color(0xFF6B0B0B),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            children: [
              PaginatedDataTable(
                source: _data,
                columns: const [
                  DataColumn(label: Text('Réf')),
                  DataColumn(label: Text('libellé')),
                  DataColumn(label: Text('Prix de vente')),
                  DataColumn(label: Text("Prix d'achat")),
                  DataColumn(label: Text('Etats(vente/achat)')),
                ],
                header: const Center(child: Text('Liste des produits')),
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
      50,
      (index) => {
            "Réf": index,
            "libellé": 'Produit $index',
            "prix de vente": Random().nextInt(10000),
            "prix d'achat": Random().nextInt(10000),
            "Etat": "En stock"
          });

  int _selectedRow = -1;
  bool _isEditing = false;

  TextEditingController _referenceController = TextEditingController();
  TextEditingController _libelleController = TextEditingController();
  TextEditingController _prixVenteController = TextEditingController();
  TextEditingController _prixAchatController = TextEditingController();
  TextEditingController _etatController = TextEditingController();

  @override
  DataRow? getRow(int index) {
    return DataRow(cells: [
      DataCell(Text('${_data[index]['Réf']}')),
      DataCell(Text('${_data[index]['libellé']}')),
      DataCell(Text('${_data[index]['prix de vente']}')),
      DataCell(Text('${_data[index]['prix d\'achat']}')),
      DataCell(Text('${_data[index]['Etat']}')),
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