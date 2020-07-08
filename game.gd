extends Node2D

var stats = PlayerStats

func _ready():
	stats.connect("won", self, "finish_game")

func finish_game():
	$CanvasLayer/CenterContainer/WindowDialog.popup()
	get_tree().paused = true
	print("You win!")


func _on_CanvasLayer_exit_button_pressed():
	get_tree().quit()


func _on_CanvasLayer_restart_button_pressed():
	get_tree().reload_current_scene()
	PlayerStats.score = 0
	get_tree().paused = false
