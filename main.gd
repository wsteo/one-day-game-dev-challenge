extends Node

var score = 0
@export var coin_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_collectible_coin_collected():
	score += 1
	$HUD.update_score(score)

func _on_coin_timer_timeout():
	var coin = coin_scene.instantiate()
	add_child(coin)
	coin.connect("coin_collected", _on_collectible_coin_collected)
	var coin_spawn_location = get_node("CoinPath/CoinSpawnLocation")
	
	coin_spawn_location.progress_ratio = randf()
	
	coin.position = coin_spawn_location.position
