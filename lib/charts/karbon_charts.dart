// ignore_for_file: camel_case_types

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class my_charts extends StatelessWidget {
  const my_charts({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: Colors.blue,
            value: 25, // Veriyi burada belirtin
            title: 'Veri 1',
          ),
          PieChartSectionData(
            color: Colors.green,
            value: 35, // Veriyi burada belirtin
            title: 'Veri 2',
          ),
          // Diğer sektörleri ekleyin
        ],
        // İsteğe bağlı olarak grafik özelliklerini özelleştirin
        centerSpaceRadius: 40, // Orta alanın yarıçapı
        borderData: FlBorderData(show: false), // Sınırları gizle
        sectionsSpace: 0, // Sektörler arası boşluk
      ),
    );
  }
}
