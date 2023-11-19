extends CanvasLayer

var gems = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#var gemNode = get_tree().get_root().find_node("Gem2D", true, false)
	#gemNode.connect("gemCollected", self, "handleGemCollected")
	

func handleGemCollected():
	gems += 1
	$totalGems.text = str(gems)
	
