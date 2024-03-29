extends Node2D

var button1 
var button2
var button3
var puddle 
var science
# Called when the node enters the scene tree for the first time.

func _ready():
	$HelpButton.hide()
	$SoundButton.hide()
	$ExitButton.hide()
	science = $ScienceScript
	science.startGameText()
	updateText()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pause_button_toggled(toggled_on):
	if(toggled_on == true):
		$Heart.hide()
		$Heart2.hide()
		$Heart3.hide()
		$HelpButton.show()
		$SoundButton.show()
		$ExitButton.show()
	
	if(toggled_on == false):
		$Heart.show()
		$Heart2.show()
		$Heart3.show()
		$HelpButton.hide()
		$SoundButton.hide()
		$ExitButton.hide()

func _on_help_button_toggled(toggled_on):
	if(toggled_on == true):
		$FlaskHolder.hide()
		$ProgressBar.hide()
		$PauseButton.hide()
	
	if(toggled_on == false):
		$FlaskHolder.show()
		$ProgressBar.show()
		$PauseButton.show()

func updateText():
	$ChemButton/Label.text = button1
	$ChemButton2/Label.text = button2
	$ChemButton3/Label.text = button3
	#$Label.text = puddle

func _on_chem_button_pressed():
	science.throw_phial(puddle, button1)
	pass # Replace with function body.


func _on_chem_button_2_pressed():
	science.throw_phial(puddle, button2)
	pass # Replace with function body.


func _on_chem_button_3_pressed():
	science.throw_phial(puddle, button3)
	pass # Replace with function body.
