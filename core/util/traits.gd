class_name Traits
extends Object

static func implements(obj: Object, interface: StringName) -> bool:
	if obj and obj.has_meta(interface):
		return true
	else:
		return false
