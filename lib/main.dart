import 'package:flutter/material.dart';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

void main() => runApp(GameWidget(game: LenaGame()));

class LenaGame extends FlameGame {
  double gravity = 0.9;
  Vector2 velocity = Vector2(0, 0);

  SpriteComponent lenaSprite = SpriteComponent();

  @override
  Future<void>? onLoad() async {
    await super.onLoad();

    lenaSprite
      ..sprite = await loadSprite('lena.png')
      ..size = Vector2.all(100)
      ..position = Vector2(100, 30);

    add(lenaSprite);
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (lenaSprite.y < size[1] - lenaSprite.height) {
      velocity = Vector2(0, velocity.y += gravity);
      lenaSprite.position += velocity * dt;
    }
  }
}
