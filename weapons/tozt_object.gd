#This script determines the bahvaiour of weapons that are laying on the ground.
extends Spatial


var id = 4
var item_object = preload("res://weapons/tozt.tscn")

# if something collides with the area
func _on_Area_body_entered(body):
	# check to see if that object has a method called "pick_up"
	if body.has_method("pick_up"):
		if body.pick_up(item_object, "weapon", id):
			queue_free()
