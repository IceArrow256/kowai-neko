extends Node2D

var stats = PlayerStats

func _ready():
	stats.connect("won", self, "finish_game")

func finish_game():
	print("You win!")
