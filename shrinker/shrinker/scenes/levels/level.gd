extends Node2D

const bullet_scene : PackedScene = preload("res://scenes/levels/bullet.tscn")

func _on_player_fire_bullet(pos:Vector2, dir:Vector2) -> void:
	var bullet = bullet_scene.instantiate() as Bullet
	bullet.position = pos
	bullet.set_direction(dir)
	$Bullets.add_child(bullet)
