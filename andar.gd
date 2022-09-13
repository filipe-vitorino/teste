extends Path2D



export var speed =  100
onready var follow = get_node("PathFollow2D")

var curva_atual = get_curve()
var tam = curva_atual.get_point_count () 
var ponto_final = curva_atual.get_point_position(tam-1)

var nova_c = Curve2D.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	print(tam)
	print(ponto_final)
	nova_c.add_point(ponto_final)
	nova_c.add_point(Vector2(400,400))
	

func _process(delta):
	follow.set_offset(follow.get_offset() + speed*delta)
	if (follow.get_unit_offset() == 1):
		#print("final")
		set_curve(nova_c)
		follow.set_offset(0)
	
