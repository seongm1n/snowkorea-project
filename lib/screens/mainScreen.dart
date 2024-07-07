import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final Map<String, String> mujuResortInfo = const {
    'name': '무주 덕유산 리조트',
    'crowdLevel': 'Moderate',
    'temperature': '2°C',
    'wind': '5 km/h NW',
    'snowCondition': 'Fresh Snow',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Muju Ski Resort Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                mujuResortInfo['name']!,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ResortInfoRow(
              label: '현재 혼잡도:',
              value: mujuResortInfo['crowdLevel']!,
            ),
            const SizedBox(height: 10),
            ResortInfoRow(
              label: '현재 온도:',
              value: mujuResortInfo['temperature']!,
            ),
            const SizedBox(height: 10),
            ResortInfoRow(
              label: '바람:',
              value: mujuResortInfo['wind']!,
            ),
            const SizedBox(height: 10),
            ResortInfoRow(
              label: '눈 상태:',
              value: mujuResortInfo['snowCondition']!,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Refresh or update data logic here
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Update Info'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResortInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const ResortInfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
