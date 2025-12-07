extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	logo_animation()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func logo_animation():
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property($logo,"modulate:a",0.0,1.0)
	tween.tween_property($logo,"modulate:a",1.0,1.0)
	tween.tween_property($logo,"modulate:a",1.0,1.0)
	tween.tween_property($logo,"modulate:a",0.0,1.0)
	await  get_tree().create_timer(4.0).timeout
	get_tree().change_scene_to_file("res://scenes/home_screen.tscn")
