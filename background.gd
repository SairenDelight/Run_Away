extends Sprite

var timer = 0


func _ready():
	set_process(true)
	
func _process(delta):
	if(timer == 10):
		if(get_offset().x == -2160): 
			set_offset(Vector2(0, get_offset().y))
		set_offset(Vector2(get_offset().x-30, get_offset().y))
		timer = 0
	timer+=1