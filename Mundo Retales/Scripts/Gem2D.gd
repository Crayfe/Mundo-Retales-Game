extends Area2D

signal gemCollected

func _on_body_entered(body):
	emit_signal("gemCollected")
	queue_free()
