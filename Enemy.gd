extends KinematicBody2D
var EnemySpeed = 10
onready var enemy = get_node("EnemySprite2D")

func _ready():
	randomize()
	var enemy = get_node("EnemySprite2D")
	var rando= rand_range(0,5)
	if(int(rando)==1):
		enemy.set_animation("type_2")
	if(int(rando)==2):
		enemy.set_animation("type_2")
	if(int(rando)==3):
		enemy.set_animation("type_3")
	if(int(rando)==4):
		enemy.set_animation("type_4")
	if(int(rando) == 0):
		enemy.set_animation("default")
	
	set_fixed_process(true)
	
	
func _fixed_process(delta):
	var newPos = get_pos()
	newPos = Vector2(get_pos().x-EnemySpeed,get_pos().y)
	set_pos(newPos)
	
	if (newPos.x < -5):
		queue_free()
	

func _on_Area2D_body_enter( body ):
	if body.is_in_group("Player"):
		get_tree().change_scene("res://MainMenu.tscn")
		
