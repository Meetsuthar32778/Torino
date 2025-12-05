extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VideoStreamPlayer.hide()
	start_intro()

func start_intro():
	logo_animation()
	logo_background_animation()
	TTB_animation()
	await  get_tree().create_timer(4.0).timeout
	$VideoStreamPlayer.show()
	$VideoStreamPlayer.play()

func logo_animation():
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property($logo,"modulate:a",0.0,1.0)
	tween.tween_property($logo,"modulate:a",1.0,1.0)
	tween.tween_property($logo,"modulate:a",1.0,1.0)
	tween.tween_property($logo,"modulate:a",0.0,1.0)


func logo_background_animation():
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property($Fadeground,"modulate:a",1.0,4.0)
	tween.tween_property($Fadeground,"modulate:a",0.0,1.0)
	tween.tween_property($Fadeground,"visible",false,1.0)
	#tween.tween_property($VideoStreamPlayer,"autoplay",true,0.0)
	#$VideoStreamPlayer.

func TTB_animation():
	var tween = create_tween()
	tween.set_loops()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property($Start_Panel/TTB_Label,"modulate:a",0.2,1.0)
	tween.tween_property($Start_Panel/TTB_Label,"modulate:a",1.0,1.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _on_exit_button_pressed() -> void:
	get_tree().quit()

func _on_start_button_pressed() -> void:
	print("start")


func _on_setting_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/setting.tscn")
