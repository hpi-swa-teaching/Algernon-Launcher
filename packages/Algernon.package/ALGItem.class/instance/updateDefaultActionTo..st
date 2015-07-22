updating
updateDefaultActionTo: aString 
	| action index |
	algeractions size = 0
		ifTrue: [^ self].
	action := (algeractions
				select: [:each | each actionVerb = aString]) first.
	index := algeractions indexOf: action.
	self defaultIndex: index