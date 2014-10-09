/*
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class ThirdScene : SEScene
{
SESprite color1;
SESprite color2;
SESprite color3;
SESprite color4;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("#CC33FF"), get_scene_width(), get_scene_height()));
		color1 = add_sprite_for_color(Color.instance("#FF0066"), 0.1*get_scene_width(), 0.1*get_scene_height());
        color1.move(0.9*get_scene_width(),0.9*get_scene_height());

        color2 = add_sprite_for_color(Color.instance("#33FFFF"), 0.1*get_scene_width(), 0.1*get_scene_height());
        color2.move(0.9*get_scene_width(),0.8*get_scene_height());

        color3 = add_sprite_for_color(Color.instance("#CC33FF"), 0.1*get_scene_width(), 0.1*get_scene_height());
        color3.move(0.9*get_scene_width(),0.7*get_scene_height());

        color4 = add_sprite_for_color(Color.instance("#6666CC"), 0.5*get_scene_width(), 0.1*get_scene_height());
        color4.move(0.9*get_scene_width(),0.6*get_scene_height());
		
	}



	 public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
   	if(pi.is_inside(0.9*get_scene_width(),0.9*get_scene_height(),0.9*get_scene_width()
									+0.1*get_scene_width(),0.9*get_scene_height()+0.1*get_scene_height())) {
            switch_scene(new FirstScene());
        }
        else if(pi.is_inside(0.9*get_scene_width(),0.8*get_scene_height(),0.9*get_scene_width()
									+0.1*get_scene_width(),0.8*get_scene_height()+0.1*get_scene_height())) {
            switch_scene(new SecondScene());
        }
        else if(pi.is_inside(0.9*get_scene_width(),0.7*get_scene_height(),0.9*get_scene_width()
									+0.1*get_scene_width(),0.7*get_scene_height()+0.1*get_scene_height())) {
            switch_scene(new ThirdScene());
        }
        else if(pi.is_inside(0.9*get_scene_width(),0.6*get_scene_height(),0.9*get_scene_width()
									+0.1*get_scene_width(),0.6*get_scene_height()+0.1*get_scene_height())) {
            switch_scene(new FourthScene());
        }
    }




}