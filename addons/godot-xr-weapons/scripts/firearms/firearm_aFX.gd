extends Spatial

export(NodePath) var ShotAfxPath
export(NodePath) var ClickAfxPath
export(NodePath) var SlideAfxPath

onready var shotAfx = get_node(ShotAfxPath)
onready var clickAfx = get_node(ClickAfxPath)
onready var slideAfx = get_node(SlideAfxPath)
