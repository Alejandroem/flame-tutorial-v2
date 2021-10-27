import 'package:flame/game.dart';
import 'components/player.dart';
import 'components/world.dart';
import 'helpers/direction.dart';

class RayWorldGame extends FlameGame {
  final Player _player = Player();
  final World _world = World();

  @override
  Future<void> onLoad() async {
    await add(_world);
    add(_player);
  }

  void onJoypadDirectionChanged(Direction direction) {
    _player.direction = direction;
  }
}
