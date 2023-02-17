import 'package:flutter/material.dart';

class AddProductForm extends StatefulWidget {
  const AddProductForm({super.key});

  @override
  _AddProductFormState createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _referenceController = TextEditingController();
  final TextEditingController _libelleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _achatController = TextEditingController();
  final TextEditingController _venteController = TextEditingController();
  final TextEditingController _codeAchatController = TextEditingController();
  final TextEditingController _codeVenteController = TextEditingController();
  String _etat = 'Vente';

  @override
  void dispose() {
    _referenceController.dispose();
    _libelleController.dispose();
    _descriptionController.dispose();
    _achatController.dispose();
    _venteController.dispose();
    _codeAchatController.dispose();
    _codeVenteController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Do something with the form data
      print('Reference: ${_referenceController.text}');
      print('Libelle: ${_libelleController.text}');
      print('Description: ${_descriptionController.text}');
      print('Etat: $_etat');
      print('Prix d\'achat: ${_achatController.text}');
      print('Prix de vente: ${_venteController.text}');
      print('Code comptable achat: ${_codeAchatController.text}');
      print('Code comptable vente: ${_codeVenteController.text}');

      // Reset the form
      _formKey.currentState!.reset();
    }
  }

  String? _validateRequiredField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Veuillez saisir un(e) $fieldName';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter un nouveau produit'),
        backgroundColor: const Color(0xFF6B0B0B),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _referenceController,
                  decoration: const InputDecoration(
                      labelText: 'Référence',
                      labelStyle: TextStyle(
                        fontFamily: "arial",
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder()),
                  validator: (value) =>
                      _validateRequiredField(value, 'référence'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _libelleController,
                  decoration: const InputDecoration(
                      labelText: 'Libellé',
                      labelStyle: TextStyle(
                        fontFamily: "arial",
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder()),
                  validator: (value) =>
                      _validateRequiredField(value, 'libellé'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: const InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(
                        fontFamily: "arial",
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                DropdownButtonFormField<String>(
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                  value: _etat,
                  items: <String>['Vente', 'Achat'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _etat = newValue!;
                    });
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _achatController,
                  decoration: const InputDecoration(
                      labelText: 'Prix d\'achat',
                      labelStyle: TextStyle(
                        fontFamily: "arial",
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _venteController,
                  decoration: const InputDecoration(
                      labelText: 'Prix de vente',
                      labelStyle: TextStyle(
                        fontFamily: "arial",
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _codeAchatController,
                  decoration: const InputDecoration(
                      labelText: 'Code comptable achat',
                      labelStyle: TextStyle(
                        fontFamily: "arial",
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _codeVenteController,
                  decoration: const InputDecoration(
                      labelText: 'Code comptable vente',
                      labelStyle: TextStyle(
                        fontFamily: "arial",
                        fontSize: 12,
                      ),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFF6B0B0B)),
                  ),
                  onPressed: _submitForm,
                  child: const Text('Ajouter'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
