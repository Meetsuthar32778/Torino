extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/home_screen.tscn")


func _on_control_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Control"


func _on_graphic_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Graphic"



func _on_audio_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Audio"



func _on_account_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Account"



func _on_key_bind_button_pressed() -> void:
	$Panel3/Setting_label.text = "Setting / Key Bindings"
