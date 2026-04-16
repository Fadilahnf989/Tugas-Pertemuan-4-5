import 'package:flutter/material.dart';
import 'package:myapps/chip_widget.dart';
import 'package:myapps/header_widget.dart';
import 'package:myapps/quest_widget.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<Map<String, dynamic>> quests = [
    {
      'title': 'Kalahkan 3 Tikus',
      'reward': '20+ MBG',
      'icon': Icons.task_alt,
      'iconColor': Colors.purpleAccent,
    },
    {
      'title': 'Kumpulkan 5 Ramuan',
      'reward': '50 Gold',
      'icon': Icons.local_florist,
      'iconColor': Colors.green,
    },
    {
      'title': 'Selesaikan Misi Level 1',
      'reward': '100 XP',
      'icon': Icons.star,
      'iconColor': Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adventure Guild"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(
              name: "Prof Anjing",
              role: "Profesor",
              level: "999",
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ChipWidget(
                  icon: Icons.favorite,
                  label: "HP",
                  value: 999,
                  backgroundColor: Colors.red,
                  borderColor: Colors.red,
                ),
                const SizedBox(width: 8),
                ChipWidget(
                  icon: Icons.shield,
                  label: "DEF",
                  value: 100,
                  backgroundColor: Colors.blue,
                  borderColor: Colors.blueAccent,
                ),
                const SizedBox(width: 8),
                ChipWidget(
                  icon: Icons.water_drop,
                  label: "DMG",
                  value: 999,
                  backgroundColor: Colors.yellow,
                  borderColor: Colors.yellow,
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Today's Quests",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 8),
            ...quests.map(
              (quest) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: QuestWidget(
                  title: quest['title'],
                  reward: quest['reward'],
                  icon: quest['icon'],
                  iconColor: quest['iconColor'],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}