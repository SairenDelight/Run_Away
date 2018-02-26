extends KinematicBody2D

# Members
const PlayerSpeed = 8
var meters = 0
const jump = 20
const dash = 50
const gravity = 300
var pause = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	
func _fixed_process(delta):
    # When set_process() is enabled, this function is called every frame.
	var newPos = get_pos()
	newPos = Vector2(get_pos().x,get_pos().y+(gravity*delta))
	set_pos(newPos)	
	
	var player = get_node("PlayerSprite2D")
	meters+=1
	
	if(newPos.y <= 0):
		newPos = Vector2(get_pos().x,get_pos().y+300)
		set_pos(newPos)
	if(newPos.y >=get_viewport().get_visible_rect().size.height):
		newPos = Vector2(get_pos().x,get_pos().y-300)
		set_pos(newPos)
	if(Input.is_action_pressed("Jump")):
		newPos=Vector2(get_pos().x,get_pos().y-jump)
		set_pos(newPos)
		
	else:
		player.set_animation("default")
		


