// ignore_for_file: camel_case_types, duplicate_ignore, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_typing_uninitialized_variables, non_constant_identifier_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:yesil_turizm/config/Colors.dart';
import 'package:yesil_turizm/config/app_bar.dart';

// ignore: camel_case_types
class seyahat extends StatelessWidget {
  const seyahat({super.key});

  @override
  Widget build(BuildContext context) {
    const baslik = "Seyahat Yardımcısı";

    return Scaffold(
      appBar: MyAppBar(title: baslik),
      body: Column(
        children: [
          seyahat_card(
              backgroung_color: project_colors.green_base,
              title: "Yeşil Rotalar",
              icon: Icon(
                Symbols.location_on,
                grade: 200,
                size: 85,
                color: project_colors.sky_white,
              )),
          seyahat_card(
              backgroung_color: project_colors.black_darker,
              title: "Yeşil Konaklama",
              icon: Icon(
                Symbols.home,
                grade: 200,
                size: 85,
                color: project_colors.sky_white,
              )),
          seyahat_card(
              backgroung_color: project_colors.green_base,
              title: "Çevre Dostu Yeme İçme Yerleri",
              icon: Icon(
                Symbols.fastfood,
                grade: 200,
                size: 75,
                color: project_colors.sky_white,
              )),
        ],
      ),
    );
  }
}

class seyahat_card extends StatelessWidget {
  final String title;
  final icon;
  final backgroung_color;
  const seyahat_card(
      {super.key,
      required this.title,
      required this.icon,
      required this.backgroung_color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        color: backgroung_color,
        margin: EdgeInsets.all(40),
        child: CustomListTile(
          title: title,
          leadingWidget: icon,
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  Widget? trailingWidget;
  late CrossAxisAlignment crossAxisAlignment;
  late TextStyle titleStyle;
  late TextStyle subtitleStyle;
  String title;
  String? subtitle;
  Widget? leadingWidget;

  CustomListTile(
      {super.key,
      this.trailingWidget,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.titleStyle = const TextStyle(
          color: project_colors.sky_white,
          fontWeight: FontWeight.w600,
          fontFamily: "Poppins",
          fontStyle: FontStyle.normal,
          fontSize: 22),
      this.subtitleStyle = const TextStyle(
        fontSize: 14,
      ),
      required this.title,
      this.subtitle,
      this.leadingWidget});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: leadingWidget ?? Container(),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: titleStyle,
                    ),
                  ),
                ),
                Text(subtitle ?? "", style: subtitleStyle),
              ],
            ),
          ),
          const SizedBox(width: 16),
          trailingWidget ?? Container()
        ],
      ),
    );
  }
}
