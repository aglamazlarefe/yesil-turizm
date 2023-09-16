// ignore_for_file: camel_case_types, prefer_const_constructors, constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:yesil_turizm/charts/karbon_charts.dart';
import 'package:yesil_turizm/config/Colors.dart';

import '../config/app_bar.dart';

class karboniz extends StatelessWidget {
  const karboniz({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    const _ipucu_Text = "Sürdürülebilirlik İpuçları";
    const _appbar_title = "Karbon Ayak İzi";

    return Scaffold(
      appBar: MyAppBar(title: _appbar_title),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: my_charts(),
          ),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                    width: screenWidth,
                    child: Center(
                      child: Text(_ipucu_Text,
                          style: Theme.of(context).textTheme.headlineSmall),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(22, 22, 22, 11),
                      child: Container(
                        decoration: BoxDecoration(
                            color: project_colors.green_lighter,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: ListTile(
                          title: const Text("toplu taşıma kullanımı"),
                          subtitle: Text("lorem ipsum" * 6),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(22, 11, 22, 22),
                      child: Container(
                        decoration: BoxDecoration(
                            color: project_colors.green_lighter,
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: ListTile(
                          title: const Text("toplu taşıma kullanımı"),
                          subtitle: Text("lorem ipsum" * 6),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
