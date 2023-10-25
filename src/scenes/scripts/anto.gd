extends Area2D

var cursor_in = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$AntAnimation.play("ant_walk_1")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	cursor_in = true


func _on_mouse_exited():
	cursor_in = false


func _on_input_event(viewport, event, shape_idx):
	print(event is InputEventMouseButton)
	if (event is InputEventMouseButton && event.pressed):
		print("Clicked")
