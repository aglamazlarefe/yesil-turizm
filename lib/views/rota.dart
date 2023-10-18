// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:yesil_turizm/config/app_bar.dart';

void main() => runApp(const Rota());

class Rota extends StatelessWidget {
  const Rota({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: "Rota Hesaplama"),
      body: DropdownMenuWidget(),
    );
  }
}

class DropdownMenuWidget extends StatefulWidget {
  const DropdownMenuWidget({super.key});

  @override
  _DropdownMenuWidgetState createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  String selectedValue = 'Benzinli Araba'; // Başlangıçta seçilen değer

  List<String> options = [
    'Benzinli Araba',
    'Toplu Taşıma (Otobüs)',
    'Elektrikli Araba',
    "Hibrit Araba",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Seçilen Değer:  '),
        DropdownButton<String>(
          value: selectedValue,
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
        ),
      ],
    );
  }
}
