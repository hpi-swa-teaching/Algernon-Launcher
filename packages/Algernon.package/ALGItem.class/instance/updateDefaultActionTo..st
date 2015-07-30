updating
updateDefaultActionTo: aString

	| action index |
	(self algeractions size = 0) ifTrue: [^ self].
	action := (self algeractions select: [:each | each actionVerb = aString]) first.
	index := self algeractions indexOf: action.
	self defaultIndex: index