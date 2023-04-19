extends Area2D

signal coin_collected

func _physics_process(delta):
	position.y += 1

func _on_body_entered(body):
	if(body.is_in_group("player")):
		coin_collected.emit()
		hide()
	
	if(body.is_in_group("floor")):
		queue_free()
