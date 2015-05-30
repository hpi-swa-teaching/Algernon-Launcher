private
ensureMorphic

	self isMorphic ifFalse: [self error: 'This test should be run in Morphic'].
	^ nil