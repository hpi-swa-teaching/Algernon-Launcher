testing
testAlgernonPositioningWindowIsSameSizeAfterReopening
	| point oldPosition|
	point := 0 @ 0.
	oldPosition := self algerInstance position.
	self algerInstance lastWorldBounds: World bounds corner - point.
	self algerInstance activate.
	self assert: (self algerInstance position = oldPosition).