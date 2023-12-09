extends Area2D

func _on_body_entered(body):
	
	if body.get_name() == "player":
		print("Player into the portal")
		print(self.get_parent().name)
		if get_tree().current_scene.name == "Lobby":
			get_tree().change_scene_to_file("res://Scenes/platform-1.tscn")
		elif get_tree().current_scene.name == "platform-1":
			get_tree().change_scene_to_file("res://Scenes/lobby.tscn")
