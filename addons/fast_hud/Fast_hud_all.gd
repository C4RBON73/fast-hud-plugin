@tool
extends EditorPlugin

# The main plugin is located at res://addons/my_plugin/
const PLUGIN_NAME = "fast_hud"

func _enable_plugin():
	EditorInterface.set_plugin_enabled(PLUGIN_NAME + "/Fast_hud", true)
	EditorInterface.set_plugin_enabled(PLUGIN_NAME + "/fast_hud_dock", true)

func _disable_plugin():
	EditorInterface.set_plugin_enabled(PLUGIN_NAME + "/Fast_hud", false)
	EditorInterface.set_plugin_enabled(PLUGIN_NAME + "/fast_hud_dock", false)
