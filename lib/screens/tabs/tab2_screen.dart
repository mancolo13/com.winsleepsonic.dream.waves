import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final timers = ['15 Mins', '30 Mins', '45 Mins', '60 Mins', '90 Mins (Full Cycle)'];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Gentle Sleep Timer')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: timers.length,
        itemBuilder: (context, i) {
          final t = timers[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(t, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ElevatedButton(
                  onPressed: () => RoutingService.openRegistrationUrl(),
                  style: ElevatedButton.styleFrom(backgroundColor: AppTheme.primaryColor, foregroundColor: Colors.white),
                  child: const Text('Start'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

