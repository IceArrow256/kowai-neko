extends Node

export(int) var max_score = 10
onready var score = 0 setget set_score

func set_score(value):
	score = value
	emit_signal("score_changed", score)
	print("Score: ", score)
	if score >= max_score:
		emit_signal("won")
		
signal won
signal score_changed(score)
