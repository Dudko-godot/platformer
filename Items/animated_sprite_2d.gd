extends AnimatedSprite2D


func _on_gold_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		var tween = get_tree().create_tween()
		var tween2 = get_tree().create_tween()
		tween.tween_property(self, "position", Vector2(0,-25), 0.5)
		tween2.tween_property(self, "modulate:a", 0, 0.5)
		tween.tween_callback(queue_free)
		body.gold += 1
