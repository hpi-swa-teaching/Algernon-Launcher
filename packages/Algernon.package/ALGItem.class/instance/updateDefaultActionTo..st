updating
updateDefaultActionTo: aString

	| action index |
	self algerActions ifEmpty: [^ self].
	action := (self algerActions select: [:each | each actionVerb = aString]) first.
	index := self algerActions indexOf: action.
	self defaultIndex: index