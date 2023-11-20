extends Area2D


func _on_body_entered(body):
	print("Get gem")
	getGem()

func getGem():
	GLOBAL.gems += 1
	$"../GemSound".play()
	queue_free()
