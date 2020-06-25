testing
testAlgernonPositioningWindowIsBiggerAfterReopening
	| point oldPosition|
	point := 1 @ 1.
	oldPosition := self algerInstance position.
	self algerInstance lastWorldBounds: World bounds corner - point.
	self algerInstance activate.
	self assert: (self algerInstance position = oldPosition).