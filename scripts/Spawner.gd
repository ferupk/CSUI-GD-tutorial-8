extends Node2D

@onready var enemy = preload("res://scenes/Enemy.tscn")

@export var spawn_rate: float = 0.3

var current_time = 0
var player_in_range = false

func _ready():
	current_time = spawn_rate

func _process(delta):
	if !player_in_range:
		current_time -= delta
		if current_time <= 0:
			current_time = spawn_rate
			
			var new_enemy = enemy.instantiate()
			add_child(new_enemy)



func _on_safe_range_body_entered(body: Node2D) -> void:
	if body is Player:
		player_in_range = true


func _on_safe_range_body_exited(body: Node2D) -> void:
	if body is Player:
		player_in_range = false
		current_time = spawn_rate / 2
