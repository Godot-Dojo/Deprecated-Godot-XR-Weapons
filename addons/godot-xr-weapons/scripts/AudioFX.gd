class_name AudioFX
extends Spatial

# scene to instance
export var scene: PackedScene
export(NodePath) var SlidePath
onready var firearm: Gun = get_parent()
onready var firearmslide = get_node(SlidePath)
# Called when the node enters the scene tree for the first time.
func _ready():
	if is_instance_valid(firearm):
		firearm.connect("shoot", self, "_shoot")
		firearm.connect("ammo_depleted", self, "_empty")
		firearm.connect("empty", self, "_empty")
		firearmslide.connect("on_slide_back", self, "_slide")
		firearmslide.connect("gunempty", self, "_slide")
		
func _shoot(): 
	# instance scene on shoot and apply impulse 
	var instance = scene.instance()
	firearm.owner.add_child(instance)
	instance.shotAfx.play()
	
func _empty(): 
	# instance scene on shoot and apply impulse 
	var instance = scene.instance()
	firearm.owner.add_child(instance)
	instance.clickAfx.play()

func _slide():
	var instance = scene.instance()
	firearm.owner.add_child(instance)
	instance.slideAfx.play()
