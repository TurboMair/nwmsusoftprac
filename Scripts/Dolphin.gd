extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var label = $TextboxContainer/MarginContainer/HBoxContainer/label
# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func hide_textbox():
	label.text = ""
	textbox_container.hide()
	
func show_textbox():
	#set dolphin prompt to the label
	textbox_container.show()
	#add_prompt(based on conditon)
