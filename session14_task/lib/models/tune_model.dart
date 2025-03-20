import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';

class ToneModel {
  final Color color;
  final String sound;

  ToneModel({required this.color, required this.sound});

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
