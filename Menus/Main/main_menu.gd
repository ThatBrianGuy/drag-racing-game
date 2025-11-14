extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_btn_vehicles_pressed() -> void:
	pass # Replace with function body.


func _on_btn_race_pressed() -> void:
	get_tree().change_scene_to_file("res://Menus/Race/RaceMenu.tscn")


func _on_btn_drivers_pressed() -> void:
	pass # Replace with function body.


func _on_btn_mechanics_pressed() -> void:
	pass # Replace with function body.


func _on_btn_exit_pressed() -> void:
	get_tree().quit();
