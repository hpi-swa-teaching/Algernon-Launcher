testing
testAlgernonPositioningWindowIsSameSizeAfterReopening
	| oldPosition|
	oldPosition := self algerInstance position.
	self algerInstance activate.
	self assert: (self algerInstance position = oldPosition).