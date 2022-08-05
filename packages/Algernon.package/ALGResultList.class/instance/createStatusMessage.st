status message
createStatusMessage
	
	| itemMorph |
	
	self removeOldStatusMessage.
	(self controller statusMessage = '')
		ifTrue: [^ self updateHeight].
	itemMorph := ALGResultItemMorph newStatusWithContents: (self controller statusMessage) in: self.
	self scroller addMorphFront: itemMorph.
	self updateHeight