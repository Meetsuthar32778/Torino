extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Setting_Icon_animation()
	_on_control_button_pressed()
	


func Setting_Icon_animation():
	var tween = create_tween()
	#$Panel3/Setting_icon.rotation
	tween.set_loops()
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	tween.tween_property($Panel3/Setting_icon,"rotation",0.0,0.0)
	tween.tween_property($Panel3/Setting_icon,"rotation",360.0,200.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/home_screen.tscn")


func _on_control_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Control"
	close_all_Container()
	$Panel2/Control_container.visible = true
	
	$Panel/VBoxContainer/Control_button.position = Vector2(10,10)


func _on_graphic_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Graphic"
	close_all_Container()
	$Panel2/Graphic_container.visible = true
	$Panel/VBoxContainer/Graphic_button.position = Vector2(10,80)



func _on_audio_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Audio"
	close_all_Container()
	$Panel2/Audio_Container.visible = true
	$Panel/VBoxContainer/Audio_button.position = Vector2(10,150)



func _on_account_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Account"
	close_all_Container()
	$Panel2/Account_Container.visible = true
	$Panel/VBoxContainer/Account_button.position = Vector2(10,220)



func _on_key_bind_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Key Bindings"
	close_all_Container()
	$Panel2/Key_Bind_Container.visible = true
	$Panel/VBoxContainer/Key_Bind_button.position = Vector2(10,290)
	

func close_all_Container():
	$Panel2/Control_container.visible = false
	$Panel2/Graphic_container.visible = false
	$Panel2/Audio_Container.visible = false
	$Panel2/Account_Container.visible = false
	$Panel2/Key_Bind_Container.visible = false
	$Panel/VBoxContainer/Control_button.position = Vector2(0,10)
	$Panel/VBoxContainer/Graphic_button.position = Vector2(0,80)
	$Panel/VBoxContainer/Audio_button.position = Vector2(0,150)
	$Panel/VBoxContainer/Account_button.position = Vector2(0,220)
	$Panel/VBoxContainer/Key_Bind_button.position = Vector2(0,290)
	
