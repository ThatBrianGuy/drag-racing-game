extends Resource
class_name BaseVehicle

@export var vehicle_name: String
@export var engine_type: engine_types
@export var transmission_type: transmission_types
@export var power_adder: power_adders
@export var cost: int
@export var vehicle_image: CompressedTexture2D
@export var available: bool

enum engine_types {
	I4,
	I6,
	V6,
	V8
}

enum transmission_types {
	Manual,
	Automatic
}

enum power_adders {
	None,
	Turbo,
	TwinTurbo,
	Supercharger
}
