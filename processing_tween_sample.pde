import aurelienribon.tweenengine.Timeline;
import aurelienribon.tweenengine.Tween;
import aurelienribon.tweenengine.TweenManager;
import aurelienribon.tweenengine.equations.Bounce;
import aurelienribon.tweenengine.equations.Expo;
import aurelienribon.tweenengine.equations.Quart;
import aurelienribon.tweenengine.equations.Cubic;
import aurelienribon.tweenengine.TweenAccessor;

import java.util.List;
import java.util.ArrayList;

Circle obj = new Circle();
TweenManager manager;

void setup(){
    size(600,600);

    Tween.registerAccessor(Circle.class, new CircleAccessor());
    manager = new TweenManager();
    Timeline.createSequence()
        .push(Tween.to(obj, CircleAccessor.POSITION_XY, 1.0f).target(500,500).ease(Cubic.OUT))
        .delay(0.1f)
        .push(Tween.to(obj, CircleAccessor.POSITION_XY, 1.0f).target(0,0).ease(Cubic.OUT))
        .repeat(10, 0.1f)
        .start(manager);
}

void draw(){
    background(color(249, 193, 74));
    manager.update(0.01f);
    obj.draw();
}

