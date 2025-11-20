extends CSGBox3D

@export var spin_speed: float = 0.5


func _physics_process(delta: float) -> void:
    rotate_y(spin_speed * delta)