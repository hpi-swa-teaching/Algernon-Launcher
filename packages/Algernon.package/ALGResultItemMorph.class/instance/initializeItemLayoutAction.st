initialization
initializeItemLayoutAction
	self actionMorph: self createActionMorph.
	self hasChildrenMorph: self createHasChildrenMorph.
	self item algerType hasChildren
		ifTrue: [self
				addMorph: self hasChildrenMorph
				fullFrame: (self layoutFrameFor: #HasChildrenMorph)].
	self
		addMorph: self actionMorph
		fullFrame: (self layoutFrameFor: #ActionMorph).
	self actionMorph vResizing: #shrinkWrap