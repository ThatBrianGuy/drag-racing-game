extends Node

var dealership_vehicles: Dictionary = {
	"Hunda AE86" : { "name": "Hunda AE86", "engine_type": "I4", "drive_type": "2WD", "differential": "Front", "transmission_type": "Manual", "image": preload("res://Images/HundaAE86.png"), "power_adders": [] },
	"Juke Pastel" : { "name": "Juke Pastel", "engine_type": "I4", "drive_type": "2WD", "differential": "Front", "transmission_type": "Manual", "image": preload("res://Images/JukePastel.png"), "power_adders": ["turbo"] },
	"Missan S140" : { "name": "Missan S140", "engine_type": "I6", "drive_type": "2WD", "differential": "Rear", "transmission_type": "Manual", "image": preload("res://Images/MissanS140.png"), "power_adders": [] }
}

var owned_vehicles_filepath = "user://owned_vehicles.json"
var owned_vehicles: Dictionary = {
	"Hunda AE86" : { "name": "Hunda AE86", "engine_type": "I4", "drive_type": "2WD", "differential": "Front", "transmission_type": "Manual", "image": preload("res://Images/HundaAE86.png"), "power_adders": [] },
}

func _notification(what):
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		save_owned_vehicles()
		get_tree().quit()

func load_owned_vehicles():
	var file = FileAccess.open(owned_vehicles_filepath, FileAccess.READ)
	if file:
		var file_as_json: String = file.get_as_text()
		owned_vehicles = JSON.parse_string(file_as_json)
		file.close()

func save_owned_vehicles():
	var file = FileAccess.open(owned_vehicles_filepath, FileAccess.WRITE)
	if file:
		var json = JSON.stringify(owned_vehicles)
		file.store_line(json)
		file.close()
	else:
		print("Error saving file")
