extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_btn_return_pressed() -> void:
	_clear_containers()
	$MarginRightContainer/BaseDescription.visible = true
	get_tree().change_scene_to_file("res://Menus/Main/MainMenu.tscn")


func _on_btn_stock_fwd_pressed() -> void:
	_clear_containers()
	$MarginRightContainer/StockFWDDescription.visible = true


func _on_btn_unlimited_fwd_pressed() -> void:
	_clear_containers()
	$MarginRightContainer/UnlimitedFWDDescription.visible = true
	
	
func _clear_containers() -> void:
	$MarginRightContainer/BaseDescription.visible = false
	$MarginRightContainer/UnlimitedFWDDescription.visible = false
	$MarginRightContainer/StockFWDDescription.visible = false
