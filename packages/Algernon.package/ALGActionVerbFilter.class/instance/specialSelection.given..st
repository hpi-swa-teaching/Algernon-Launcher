accessing
specialSelection: anItemCollection given: anActionVerb
	(anActionVerb = '=' or: [anActionVerb = 'do'])
		ifTrue: [ ^ anItemCollection select: [ :each | each algerType class = ALGExpressionType] ].
	
	^ nil 