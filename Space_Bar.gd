extends KinematicBody2D
var timer=0

func _ready():
	set_process(true)
	
func _process(delta):
	if(timer ==300):
		self.queue_free()
	var newPos = get_pos()
	newPos = (Vector2(get_pos().x,get_pos().y))
	set_pos(newPos)
	timer+=1
