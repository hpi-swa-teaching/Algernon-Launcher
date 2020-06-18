updating
updateDefaultActionTo: aString 
	| actions index |
	self algerActions
		ifEmpty: [^ self].
	actions := self algerActions
				select: [:each | each actionVerb = aString].
	actions
		ifNotEmpty: [index := self algerActions indexOf: actions first.
			self defaultIndex: index]