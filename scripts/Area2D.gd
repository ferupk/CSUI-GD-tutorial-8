extends Area2D

@export var sceneName: String = "Level 1"

func _on_Area_Trigger_body_entered(body):
	if body.get_name() == "Player":
		get_tree().call_deferred('change_scene_to_file', str("res://scenes/" + sceneName + ".tscn"))
