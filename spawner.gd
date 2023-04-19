extends Node

@export var collectible:PackedScene

func spawnCollectible():
	var pipeInst = collectible.instantiate()
	add_child(pipeInst)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	spawnCollectible()
	print($Timer.time_left)
