@tool
extends EditorPlugin

# Replace this value with a PascalCase autoload name, as per the GDScript style guide.
const AUTOLOAD_NAME = "GlobalThreadPool"

func _enter_tree():
	# The autoload can be a scene or script file.
	add_autoload_singleton(AUTOLOAD_NAME, "res://addons/thread_pool/thread_pool.gd")

func _exit_tree():
	remove_autoload_singleton(AUTOLOAD_NAME)
