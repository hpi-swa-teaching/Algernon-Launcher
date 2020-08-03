testing positioning
testAlgernonPositioningWindowIsSameSizeAfterReopening
	self algInstance position: (10@10).
	self algInstance activate.
	self assert: (self algInstance position = (10@10)).
	self algInstance position: (10@10).