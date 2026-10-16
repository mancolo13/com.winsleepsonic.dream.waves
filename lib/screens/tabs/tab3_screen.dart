import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Binaural Brainwaves')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _waveCard('Delta Waves (1.5 Hz)', 'Deep NREM Stage 4 Restorative Sleep'),
          _waveCard('Theta Waves (5.0 Hz)', 'Lucid Dreaming & REM Stage Induction'),
          _waveCard('Alpha Waves (9.0 Hz)', 'Pre-sleep Calm & Mind Wind-down'),
        ],
      ),
    );
  }

  Widget _waveCard(String t, String desc) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: AppTheme.secondaryColor)),
          const SizedBox(height: 4),
          Text(desc, style: const TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}

