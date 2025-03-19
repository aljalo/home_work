import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String enText;
  final String jpText;
  final String sound;

  const ItemModel({
    this.image,
    required this.enText,
    required this.jpText,
    required this.sound,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
