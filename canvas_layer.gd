extends CanvasLayer

signal restart_button_pressed
signal exit_button_pressed

func _on_ButtonRestart_button_up():
	emit_signal("restart_button_pressed")

func _on_ButtonExit_button_down():
	emit_signal("exit_button_pressed")

func _on_WindowDialog_popup_hide():
	emit_signal("restart_button_pressed")
