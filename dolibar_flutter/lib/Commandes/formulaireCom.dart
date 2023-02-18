import 'package:animated_login/screens/main_screen.dart';
import 'package:flutter/material.dart';

class FormulaireCom extends StatefulWidget {
  const FormulaireCom({super.key});

  @override
  State<FormulaireCom> createState() => _FormulaireComState();
}

class _FormulaireComState extends State<FormulaireCom> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.only(top: 30)),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'ref',
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
                      "Client",
                    ),
                  ),
                  DropdownButtonFormField(items: const [
                    DropdownMenuItem(value: 'tiers1', child: Text("tiers1")),
                    DropdownMenuItem(value: 'tiers2', child: Text("tiers2")),
                    DropdownMenuItem(value: 'tiers3', child: Text("tiers3")),
                  ], value: 'tiers1', onChanged: (value) {}),
                  const Padding(padding: EdgeInsets.all(5)),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Date de commande',
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
                      "Délai de livraison",
                    ),
                  ),
                  DropdownButtonFormField(items: const [
                    DropdownMenuItem(
                        value: 'immediate', child: Text("immediate")),
                    DropdownMenuItem(
                        value: '1 semaine', child: Text("1 semaine")),
                    DropdownMenuItem(
                        value: '2 semaine', child: Text("2 semaine")),
                    DropdownMenuItem(
                        value: '3 semaine', child: Text("3 semaine")),
                    DropdownMenuItem(value: '4 weeks', child: Text("4 weeks")),
                    DropdownMenuItem(value: '5 weeks', child: Text("5 weeks")),
                  ], value: 'immediate', onChanged: (value) {}),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Conditions de règlement",
                    ),
                  ),
                  DropdownButtonFormField(items: const [
                    DropdownMenuItem(
                        value: 'a reception', child: Text("a reception")),
                    DropdownMenuItem(
                        value: '30 jours', child: Text("30 jours")),
                    DropdownMenuItem(
                        value: '30 jours fin de mois',
                        child: Text("30 jours fin de mois")),
                    DropdownMenuItem(
                        value: '60 jours', child: Text("60 jours")),
                    DropdownMenuItem(
                        value: '60 jours fin de mois',
                        child: Text("60 jours fin de mois")),
                    DropdownMenuItem(
                        value: 'a commande', child: Text("a commande")),
                    DropdownMenuItem(
                        value: 'a livraison', child: Text("a livraison")),
                    DropdownMenuItem(value: '50/50', child: Text("50/50")),
                    DropdownMenuItem(
                        value: '10 jours', child: Text("10 jours")),
                    DropdownMenuItem(
                        value: '10 jours fin de mois',
                        child: Text("10 jours fin de mois")),
                    DropdownMenuItem(
                        value: '14 jours', child: Text("14 jours")),
                    DropdownMenuItem(
                        value: '14 jours fin de mois',
                        child: Text("14 jours fin de mois")),
                  ], value: 'a reception', onChanged: (value) {}),
                  const Padding(padding: EdgeInsets.all(5)),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Mode de paiement",
                    ),
                  ),
                  DropdownButtonFormField(items: const [
                    DropdownMenuItem(
                        value: 'carte banquaire',
                        child: Text("carte banquaire")),
                    DropdownMenuItem(value: 'cheque', child: Text("cheque")),
                    DropdownMenuItem(value: 'Espece', child: Text("Espece")),
                    DropdownMenuItem(
                        value: 'Virement banquaire',
                        child: Text("Virement banquaire")),
                    DropdownMenuItem(
                        value: 'ordre de prelevement',
                        child: Text("ordre de prelevement")),
                  ], value: 'carte banquaire', onChanged: (value) {}),
                  const Padding(padding: EdgeInsets.all(5)),
                  ElevatedButton(
                      style: const ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.only(left: 50, right: 50)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff250432))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MainScreen(),
                          ));
                      },
                      child: const Text("Ajouter")),
                ],
              ),
            )));
  }
}
