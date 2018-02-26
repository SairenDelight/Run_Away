extends Node2D
const enemy_scene = preload("res://Enemy.tscn")
var can_spawn = true
var timer = 0
var tdistance = 0
var timer_enemy = 0
var score = 0
var x = 108
var y = 114

func _ready():
	set_process(true)


func _process(delta):
	tdistance+=1
	get_node("Label").set_text("Distance: " + str(score))
	if(tdistance == 20):
		score+=1
		tdistance = 0
	if(timer_enemy % 10==0 && x > 5 && y >9):
		x-= 3
		y-=3
		timer_enemy = 0
	randomize()
	var random = rand_range(x,y)
	if(timer>=random):
		timer=0
		_spawn()
		
	if(can_spawn==true):
		randomize()
		var enemy = enemy_scene.instance()
		var pos = Vector2()
		pos.x = rand_range(1000,get_viewport().get_visible_rect().size.width)
		pos.y = rand_range(0,get_viewport().get_visible_rect().size.height)
		enemy.set_pos(pos)
		get_node("PlayerNPC").add_child(enemy)
		can_spawn=false
	timer+=1
	timer_enemy+=1


func _spawn():
	can_spawn = true
	
	


func _on_pause_pressed():
	get_tree().set_pause(true)
