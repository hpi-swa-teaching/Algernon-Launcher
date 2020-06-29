testing
testAlgernonPositioningWindowIsSmallerAfterReopening
	| oldExtent |
	oldExtent := World extent.
	World extent: (100@100).
	self algerInstance deactivate.
	self algerInstance activate.
	self assert: (self algerInstance center = ALGCore defaultPosition rounded).
	World extent: oldExtent.