@tool
class_name MaestroCam extends Camera3D

@export_category("Movement Settings")
@export var target: Node3D = null
@export var enable_rotation: bool = false
@export var rotation_speed: float = 1.0

@export_category("Transition Settings")
@export var enable_smooth_transition: bool = false
@export var transition_speed: float = 1.0
@export var enable_manual_exit: bool = false
@export var manual_exit_key: StringName = &"ui_cancel"
@export var auto_exit_delay: float = 5.0

var start_pos: Vector3 = Vector3.ZERO
var is_transitioning: bool = false
var exit_timer: float = 0.0


func _ready() -> void:
	start_pos = global_position

func _physics_process(delta: float) -> void:
	if is_transitioning:
		return