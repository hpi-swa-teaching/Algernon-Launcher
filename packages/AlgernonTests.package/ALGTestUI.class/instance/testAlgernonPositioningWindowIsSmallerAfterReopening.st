testing
testAlgernonPositioningWindowIsSmallerAfterReopening
	self algerInstance activate.
	World extent: (100@100).
	self assert: ((self algerInstance center x = self algerInstance class defaultPosition x rounded) & (self algerInstance center y = self algerInstance class defaultPosition y rounded))