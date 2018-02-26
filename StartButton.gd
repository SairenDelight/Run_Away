extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)
	
func _process(delta):
	if(Input.action_press("Mouse_Click")):
		get_tree().change_scene("res://Main.tscn")

	
	