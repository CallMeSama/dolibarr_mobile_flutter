import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _formKey = GlobalKey<FormState>();
  final _civilities = ["Madame", "Monsieur", "Mademoiselle", "Maître", "Docteur"];
  final _genders = ["Homme", "Femme", "Non-binaire"];
  String _selectedCivility='', _name = '', _firstName = '', _id = '', _password = '', _selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajouter un utilisateur"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DropdownButtonFormField(
                value: _selectedCivility,
                items: _civilities.map((civility) {
                  return DropdownMenuItem(
                    value: civility,
                    child: Text(civility),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCivility = value.toString();
                  });
                },
                decoration: InputDecoration(
                  labelText: "Titre de civilité",
                ),
                validator: (value) {
                  if (value == null) {
                    return "Veuillez sélectionner une civilité";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Nom",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer un nom";
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Prénom",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer un prénom";
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstName = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Identifiant",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer un identifiant";
                  }
                  return null;
                },
                onSaved: (value) {
                  _id = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Mot de passe",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Veuillez entrer un mot de passe";
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField(
                value: _selectedGender,
                items: _genders.map((gender) {
                  return DropdownMenuItem(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value.toString();
                  });
                },
                decoration: InputDecoration(
                  labelText: "Genre",
                ),
                validator: (value) {
                  if (value == null) {
                    return "Veuillez sélectionner un genre";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text("Ajouter"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // TODO: Ajouter l'utilisateur
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Utilisateur ajouté"),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
