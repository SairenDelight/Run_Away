extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	pass

func _on_StartButton_pressed():
	get_tree().change_scene("res://Main.tscn")


func _on_QuitButton_pressed():
	get_tree().quit()
	

func _on_CreditsButton_pressed():
	get_tree().change_scene("res://Credit_Screen.tscn")
