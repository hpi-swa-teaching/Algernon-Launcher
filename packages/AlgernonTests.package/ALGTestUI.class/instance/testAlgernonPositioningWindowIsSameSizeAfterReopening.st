testing
testAlgernonPositioningWindowIsSameSizeAfterReopening
	| oldPosition|
	oldPosition := self algerInstance position.
	self algerInstance position: (10@10).
	self algerInstance activate.
	self assert: (self algerInstance position = (10@10)).
	self algerInstance position: (10@10).