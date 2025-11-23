class_name NodeUtil
extends Object

# Collection of node utility functions.

static func filter_children(node: Node, predicate: Callable) -> Array:
	var result := []
	for child in node.get_children():
		if predicate.call(child):
			result.push_back(child)
	return result


# removes all children from a node, optionally freeing children
static func remove_children(node: Node, free_children: bool = false) -> void:
	for child in node.get_children():
		node.remove_child(child)
		if free_children:
			child.queue_free()


## disable processing in IDE for @tool node
static func disable_tool_processing(node :Node) -> void:
	if Engine.is_editor_hint():
		node.set_process(false)
		node.set_process_input(false)
