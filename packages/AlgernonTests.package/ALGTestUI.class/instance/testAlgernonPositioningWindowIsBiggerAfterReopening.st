testing positioning
testAlgernonPositioningWindowIsBiggerAfterReopening
	| oldPosition oldExtent |
	oldExtent := World extent.
	oldPosition := self algInstance position.
	World extent: (World extent + (100@100)).
	self algInstance activate.
	self assert: self algInstance position equals: oldPosition.
	World extent: oldExtent