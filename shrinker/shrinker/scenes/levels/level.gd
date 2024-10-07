extends Node2D

signal victory

const bullet_scene : PackedScene = preload("res://scenes/levels/bullet.tscn")

func _on_player_fire_bullet(pos:Vector2, dir:Vector2) -> void:
	var bullet = bullet_scene.instantiate() as Bullet
	bullet.position = pos
	bullet.set_direction(dir)
	$Bullets.add_child(bullet)

func _on_player_shrink_me() -> void:
	victory.emit()


func _on_water_zone_body_entered(body: Node2D) -> void:
	if body is Player:
		body.start_swimming()


func _on_water_zone_body_exited(body: Node2D) -> void:
	if body is Player:
		body.stop_swimming()
