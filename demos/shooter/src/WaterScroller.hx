//
// Flambe - Rapid game development
// https://github.com/aduros/flambe/blob/master/LICENSE.txt

import flambe.animation.AnimatedFloat;
import flambe.Component;
import flambe.display.Sprite;

class WaterScroller extends Component
{
    public var speed :AnimatedFloat;

    public function new (speed :Float)
    {
        this.speed = new AnimatedFloat(speed);
    }

    override public function onUpdate (dt :Float)
    {
        speed.update(dt);

        var sprite = owner.get(Sprite);
        sprite.y._ += dt*speed._;
        while (sprite.y._ > 0) {
            sprite.y._ -= 32;
        }
    }
}
