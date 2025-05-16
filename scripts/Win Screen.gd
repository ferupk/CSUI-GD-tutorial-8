extends CenterContainer


func _ready() -> void:
	await get_tree().create_timer(3).timeout
	get_tree().call_deferred("change_scene_to_file", "res://scenes/Level 1.tscn")
