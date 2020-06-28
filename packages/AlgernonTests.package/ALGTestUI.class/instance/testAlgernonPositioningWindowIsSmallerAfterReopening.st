testing
testAlgernonPositioningWindowIsSmallerAfterReopening
	| point |
	point := 1 @ 1.
	self algerInstance center: World bounds corner + point.
	self algerInstance activate.
	self assert: ((self algerInstance center x = self algerInstance class defaultPosition x rounded) & (self algerInstance center y = self algerInstance class defaultPosition y rounded))