extends Node2D

const Flower = preload("res://flower.tscn")
var rng = RandomNumberGenerator.new()

func _on_Timer_timeout():
	rng.randomize()
	var flower = Flower.instance()
	var main = get_tree().current_scene
	main.add_child(flower)
	flower.position = Vector2(rng.randf_range(32, 1280-32), 720-64)
