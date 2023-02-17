import 'package:flutter/material.dart';

class Formulaire extends StatefulWidget {
  const Formulaire({super.key});

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _NomController = TextEditingController();
  final TextEditingController _PrenomController = TextEditingController();
  final TextEditingController _IdController = TextEditingController();
  final TextEditingController _respHierarchiqueController =
      TextEditingController();
  final TextEditingController _motdepasseController = TextEditingController();
  final TextEditingController _AdresseController = TextEditingController();

  @override
  void dispose() {
    _NomController.dispose();
    _PrenomController.dispose();
    _respHierarchiqueController.dispose();
    _motdepasseController.dispose();
    _AdresseController.dispose();
    _IdController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Do something with the form data
      print('Nom: ${_NomController.text}');
      print('Prenom: ${_PrenomController.text}');
      print('respHierarchique: ${_respHierarchiqueController.text}');
      print('motdepasse: ${_motdepasseController.text}');
      print('Adresse: ${_AdresseController.text}');
      print('Id: ${_IdController.text}');

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
          title: Text('Ajouter un nouveau produit'),
          backgroundColor: Color(0xff083d18),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.all(5)),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Titre Civilite",
                        ),
                      ),
                      DropdownButtonFormField(items: const [
                        DropdownMenuItem(
                            value: 'Monsieur', child: Text("Monsieur")),
                        DropdownMenuItem(
                            value: 'Madame', child: Text("Madame")),
                        DropdownMenuItem(
                            value: 'Mademoiselle', child: Text("Mademoiselle")),
                      ], value: 'Monsieur', onChanged: (value) {}),
                      const Padding(padding: EdgeInsets.all(5)),
                      TextFormField(
                        controller: _NomController,
                        decoration: const InputDecoration(
                            labelText: 'Nom',
                            labelStyle: TextStyle(
                              fontFamily: "arial",
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      TextFormField(
                        controller: _PrenomController,
                        decoration: const InputDecoration(
                            labelText: 'Prenom',
                            labelStyle: TextStyle(
                              fontFamily: "arial",
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Genre",
                        ),
                      ),
                      DropdownButtonFormField(items: const [
                        DropdownMenuItem(value: 'M', child: Text("M")),
                        DropdownMenuItem(value: 'F', child: Text("F")),
                        DropdownMenuItem(value: 'Autre', child: Text("Autre")),
                      ], value: 'M', onChanged: (value) {}),
                      const Padding(padding: EdgeInsets.all(5)),
                      TextFormField(
                        controller: _IdController,
                        decoration: const InputDecoration(
                            labelText: 'Identifiant',
                            labelStyle: TextStyle(
                              fontFamily: "arial",
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      TextFormField(
                        controller: _respHierarchiqueController,
                        decoration: const InputDecoration(
                            labelText: 'Responsable hierarchique',
                            labelStyle: TextStyle(
                              fontFamily: "arial",
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      TextFormField(
                        controller: _motdepasseController,
                        decoration: const InputDecoration(
                            labelText: 'Mot de passe',
                            labelStyle: TextStyle(
                              fontFamily: "arial",
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      TextFormField(
                        controller: _AdresseController,
                        decoration: const InputDecoration(
                            labelText: 'Adresse',
                            labelStyle: TextStyle(
                              fontFamily: "arial",
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder()),
                      ),
                      const Padding(padding: EdgeInsets.all(5)),
                      const SizedBox(height: 16),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xff083d18))),
                          onPressed: _submitForm,
                          child: const Text("creer utilisateur")),
                    ],
                  ),
                ))));
  }
}
