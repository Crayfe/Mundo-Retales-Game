extends Control

func _ready():
	#$Start.grab_focus()
	pass
	
func _on_play_pressed():
	$ColorRect/Transition.play("fade_out")
	#g


func _on_exit_pressed():
	$ColorRect/Transition.play("fade_out_quit")

func _on_animation_player_animation_finished(anim_name):
		match anim_name:
			"fade_out": get_tree().change_scene_to_file("res://Scenes/lobby.tscn")
			"fade_out_quit": get_tree().quit()
