testing
testAlgernonPositioningWindowIsSmallerAfterReopening
	| oldExtent |
	oldExtent := World extent.
	World extent: (100@100).
	self algerInstance deactivate.
	self algerInstance activate.
	self assert: ((self algerInstance center x = self algerInstance class defaultPosition x rounded) & (self algerInstance center y = self algerInstance class defaultPosition y rounded)).
	World extent: oldExtent.