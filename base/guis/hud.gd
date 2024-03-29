class_name HUD
extends Control

@onready var menu : Control = $Menu
@onready var console : Console = $Console

# Called when the node enters the scene tree for the first time.
func _ready():
	menu.visible = false
	console.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed('ui_cancel'): # escape
		# PÄÄSTÄ IRTI!
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		menu.visible = true

	if event.is_action_pressed('toggleconsole'):
		if console.visible:
			console.visible = false
		else:
			console.visible = true
			#Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
