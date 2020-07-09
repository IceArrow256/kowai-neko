extends Node2D

var stats = PlayerStats
var rng = RandomNumberGenerator.new()
onready var backgound_music = [preload("res://background_music0.wav"),
							   preload("res://background_music1.wav"),
							   preload("res://background_music2.wav")] 


func _ready():
	rng.randomize()
	$AudioStreamPlayer.stream = backgound_music[rng.randi_range(0, 2)]
	$AudioStreamPlayer.play()
	stats.connect("won", self, "finish_game")
	stats.connect("score_changed", $GUI, "change_score")
	

func finish_game():
	$GUI/CenterContainer/WindowDialog.popup()
	get_tree().paused = true
	print("You win!")


func _on_CanvasLayer_exit_button_pressed():
	get_tree().quit()


func _on_CanvasLayer_restart_button_pressed():
	get_tree().reload_current_scene()
	PlayerStats.score = 0
	get_tree().paused = false
