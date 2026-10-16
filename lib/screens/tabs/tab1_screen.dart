import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});
  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  double _rain = 0.75;
  double _thunder = 0.35;
  double _ocean = 0.50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • SleepSonic'),
        actions: [
          IconButton(
            icon: const Icon(Icons.nightlight_round, color: AppTheme.secondaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.3), AppTheme.surfaceColor],
                radius: 0.9,
              ),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
            ),
            child: Column(
              children: [
                const Icon(Icons.waves, size: 48, color: AppTheme.secondaryColor),
                const SizedBox(height: 12),
                const Text('MIDNIGHT AMBIENT MIXER', style: TextStyle(color: Colors.white70, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.5)),
                const SizedBox(height: 4),
                const Text('3 Sound Layers Active', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _soundSlider('Heavy Rain on Window', _rain, (v) => setState(() => _rain = v)),
          _soundSlider('Distant Rolling Thunder', _thunder, (v) => setState(() => _thunder = v)),
          _soundSlider('Ocean Waves Surf', _ocean, (v) => setState(() => _ocean = v)),
        ],
      ),
    );
  }

  Widget _soundSlider(String name, double val, ValueChanged<double> onChanged) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              Text('${(val * 100).toInt()}%', style: const TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 13)),
            ],
          ),
          Slider(value: val, activeColor: AppTheme.primaryColor, onChanged: onChanged),
        ],
      ),
    );
  }
}

