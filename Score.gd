extends Label

var score = 0 
func _ready():
	set_process(true)
	
func _process(delta):
	Label.set_text("Distance: " + str(score))
	score+=1
