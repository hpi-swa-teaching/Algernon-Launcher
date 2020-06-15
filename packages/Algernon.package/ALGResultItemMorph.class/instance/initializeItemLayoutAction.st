initialization
initializeItemLayoutAction
	self actionMorph: self createActionMorph.
	self childrenIndicatorMorph: self createChildrenIndicatorMorph.
	self item algerType hasChildren
		ifTrue: [self
				addMorph: self childrenIndicatorMorph
				fullFrame: (self layoutFrameFor: #HasChildrenMorph)].
	self
		addMorph: self actionMorph
		fullFrame: (self layoutFrameFor: #ActionMorph).
	self actionMorph vResizing: #shrinkWrap