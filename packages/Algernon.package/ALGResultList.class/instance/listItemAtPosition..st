drawing
listItemAtPosition: aPoint 
	| itemIndex currentHeight |
	currentHeight := self bounds topLeft y.
	itemIndex := 0.
	[aPoint y >= currentHeight]
		whileTrue: [itemIndex := itemIndex + 1.
			itemIndex > self submorphs size
				ifTrue: [^ nil].
			currentHeight := currentHeight + (self submorphs at: itemIndex) height].
	itemIndex < 1
		ifTrue: [^ nil].
	^ self items at: itemIndex