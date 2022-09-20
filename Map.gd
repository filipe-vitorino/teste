extends Node2D


onready var trem = get_node("Path2D")
onready var camera = get_node("Camera2D")
onready var pecas = get_node("rail")
onready var sprite = get_node("editor_object/Sprite")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var tile_id = pecas.get_tileset().find_tile_by_name("6")
	var text =  pecas.get_tileset().tile_get_texture(tile_id)
	var region = pecas.get_tileset().tile_get_region(tile_id) 
	sprite.texture = text
	sprite.region_rect = region
	sprite.region_enabled = true
	print(pecas.get_tileset().find_tile_by_name("1"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CanvasLayer_botao_1():
	print(trem.get_trem_pos())
	camera.position = trem.get_trem_pos()
	camera.zoom_neutro()


func _on_CanvasLayer_play():
	trem.set_speed()
