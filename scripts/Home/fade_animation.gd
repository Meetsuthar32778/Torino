extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_fading()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func start_fading():
	var tween = create_tween()
	tween.set_loops()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(self,"modulate:a",0.2,1.0)
	tween.tween_property(self,"modulate:a",1.0,1.0)
	
