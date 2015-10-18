initialization
initializeBackground

	self background ifNotNil: [ self removeMorph: self background ].
	self 
		background: (ALGBackground newIn: self);
		addMorphBack: self background