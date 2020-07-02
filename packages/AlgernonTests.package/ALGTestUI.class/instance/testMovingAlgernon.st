testing
testMovingAlgernon
	| oldPosition |
	oldPosition := self algerInstance position.
	self moveToMouse.
	self deny: (self algerInstance  position = oldPosition).